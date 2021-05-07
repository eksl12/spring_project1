package test.spring.controller.user;

import test.spring.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class UserController {
	private UserService userService;

	@Autowired
	UserController(
		UserService userService
	) {
		this.userService = userService;
	}

	@GetMapping("/user")
	@ResponseBody
	public List<Map<String, Object>> getUser() {
		return userService.getUser();
	}
}
