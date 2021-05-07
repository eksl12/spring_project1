package test.spring.controller;

import org.springframework.web.bind.annotation.GetMapping;
//RestController : api 만들기위해 JSON 형태로 데이터 반환, view를 불러들이지 않음
//import org.springframework.web.bind.annotation.RestController;
//ResponseBody : 데이터를 형태 그대로 리턴해줌. 
//Controller 어노테이션 밑에서 문자열 반환하더라도 view찾지 않고 문자열자체를 반환함. 객체 및 JSON 반환용
//import org.springframework.web.bind.annotation.ResponseBody;
//Controller : String객체로 문자열 반환해도 view파일 찾아서 띄워줌
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;


import javax.servlet.http.HttpServletRequest;

@Controller
public class TestController {
	//테스트 페이지
	@GetMapping("/test")
	public String test() {
		return "test123";
	}

	//String 형식으로 jsp 띄우기 실습
	//@ResponseBody
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String hello() {
		return "test/hello";
	}
	//ModelAndView로 jsp 띄우기 실습
	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public ModelAndView hello2() {
		ModelAndView view = new ModelAndView();
		view.setViewName("test/hello");
		view.addObject("name", "zodaland");
		return view;
	}

	//form data 전달 실습 1
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form() {
		return "test/form";
	}

	//form data POST로 받았을때 데이터 반환해주기

	//HttpServletRequest 객체 사용
	/*
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String form2(HttpServletRequest httpServletRequest, Model model) {
		String id = httpServletRequest.getParameter("id");
		String password = httpServletRequest.getParameter("password");
		model.addAttribute("id", id);
		model.addAttribute("password", password);

		return "test/form";
	}
	*/

	//RequestParam 어노테이션 사용
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String form3(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("password", password);

		return "test/form";
	}
}
