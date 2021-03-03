package test.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
public class App {
    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }

	@RequestMapping("/test")
	public String test() {
		return "test";
	}

    @RequestMapping("/")
    public String hello() {
        return "hello";
    }
}

