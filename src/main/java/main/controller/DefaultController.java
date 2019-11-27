package main.controller;

import main.dto.CaptchaResponseDto;
import main.entity.Category;
import main.entity.News;
import main.entity.Role;
import main.entity.User;
import main.repository.CategoryRepository;
import main.repository.NewsRepository;
import main.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

@Controller
public class DefaultController {
    private final static String CAPTCHA_URL = "https://www.google.com/recaptcha/api/siteverify?secret=%s&response=%s";
    private static final int PAGE_SIZE = 10;
    private int count;

    @Autowired
    private NewsRepository newsRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${upload.path}")
    private String uploadPath;

    @Value("${recaptcha.secret}")
    private String secret;

    private ArrayList<News> getNewsListIfLogin(ArrayList<News> news, String name) {
        User user = userRepository.findByLogin(name);
        List<Category> categories = user.getCategories();

        Set<News> newsSelect = new HashSet<>();
        for (int i = 0; i < news.size(); i++) {
            List<Category> cats = news.get(i).getCategories();
            for (int j = 0; j < cats.size(); j++) {
                if (categories.contains(cats.get(j))) {
                    newsSelect.add(news.get(i));
                    break;
                }
            }
        }
        return new ArrayList<>(newsSelect);
    }

    private ArrayList<News> getPageNews(int pageNumber, ArrayList<News> news) {
        count = news.size() / PAGE_SIZE;
        if (news.size() % PAGE_SIZE != 0) {
            count++;
        }
        Collections.sort(news);
        int a = (pageNumber - 1) * PAGE_SIZE, b;
        if (pageNumber <= news.size() / PAGE_SIZE) {
            b = pageNumber * PAGE_SIZE - 1;
        } else {
            b = news.size() - 1;
        }
        if (a > b) {
            return null;
        }
        ArrayList<News> result = new ArrayList<>();
        for (int i = a; i <= b; i++) {
            result.add(news.get(i));
        }
        return result;
    }

    @RequestMapping(value = "/page/{pageNumber}", method = RequestMethod.GET)
    public String showPage(@PathVariable("pageNumber") int pageNumber, Model model) {
        Iterable<News> iterable = newsRepository.findAll();
        ArrayList<News> news = new ArrayList<>();
        iterable.forEach(news::add);
        ArrayList<News> result;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && !auth.getName().equals("anonymousUser")) {
            ArrayList<News> newsSelect = getNewsListIfLogin(news, auth.getName());
            result = getPageNews(pageNumber, newsSelect);
        } else {
            result = getPageNews(pageNumber, news);
        }
        if (result != null) {
            model.addAttribute("news_list", result);
        }
        model.addAttribute("count", count);
        return "index";
    }

    @RequestMapping("/")
    public String index(Model model) {
        Iterable<News> iterable = newsRepository.findAll();
        ArrayList<News> news = new ArrayList<>();
        iterable.forEach(news::add);
        ArrayList<News> result;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && !auth.getName().equals("anonymousUser")) {
            ArrayList<News> newsSelect = getNewsListIfLogin(news, auth.getName());
            result = getPageNews(1, newsSelect);
        } else {
            result = getPageNews(1, news);
        }
        if (result != null) {
            model.addAttribute("news_list", result);
        }
        model.addAttribute("count", count);
        return "index";
    }

    @RequestMapping(value = "/img/{fileName}", method = RequestMethod.GET)
    public void showImage(@PathVariable("fileName") String fileName, HttpServletResponse response, HttpServletRequest request) throws IOException {
        byte[] array = Files.readAllBytes(Paths.get(uploadPath + fileName));
        response.getOutputStream().write(array);
        response.getOutputStream().close();
    }

    @RequestMapping(value = "/regForm", method = RequestMethod.GET)
    public String login(Model model) {
        return "registration";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profile(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByLogin(auth.getName());
        model.addAttribute("user", user);
        return "profile";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String addUser(@RequestParam("g-recaptcha-response") String captchaResponse, User user, Model model) {
        String url = String.format(CAPTCHA_URL, secret, captchaResponse);
        CaptchaResponseDto response = restTemplate.postForObject(url, Collections.emptyList(), CaptchaResponseDto.class);
        if (!response.isSuccess()) {
            model.addAttribute("captchaError", "Fill captcha!");
            return "registration";
        }
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String pas = encoder.encode(user.getPassword());
        user.setActive(true);
        user.setRole(Role.USER);
        user.setPassword(pas);
        user.setRegistrationDate(new Date());
        Iterable<Category> iterable = categoryRepository.findAll();
        List<Category> categories = new ArrayList<>();
        iterable.forEach(categories::add);
        user.setCategories(categories);
        userRepository.save(user);
        return "login";
    }
}