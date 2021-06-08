package test.gradle.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import test.gradle.controller.user.UserController;
import test.gradle.service.CorService;
import test.gradle.service.user.UserService;
import test.gradle.vo.InCorVo;
import test.gradle.vo.OutCorVo;

@Controller
@RequestMapping("/cor")
public class CorManageController {
	@Autowired
	private CorService service;
	private static final String VIEW_PATH = "dashboard/";
	private static final Logger logger = LogManager.getLogger(CorManageController.class);


	@GetMapping("/in")
	public String inCor(Model model) {
		logger.info("입고처 페이지호출");
		InCorVo incor=null;
		model.addAttribute("list", service.selectInCor(incor));
		return VIEW_PATH+"inCorManage";
	}
	
	@PostMapping("/in")
	public String inCor(@ModelAttribute InCorVo incor,Model model) {

		logger.info("입고처 등록");
		model.addAttribute("state", service.registerInCor(incor));
		model.addAttribute("list", service.selectInCor(incor));
		
		return VIEW_PATH+"inCorManage";
		
	}
	
	@GetMapping("/out")
	public String outCor() {
		logger.info("출고처 페이지호출");
		return VIEW_PATH+"outCorManage";
	}
	
	@PostMapping("/out")
	public String outCor(@ModelAttribute OutCorVo cor,Model model) {
		logger.info("출고처 등록");
		model.addAttribute("state", service.registerOutCor(cor));
		model.addAttribute("list", service.selectOutCor(cor));
		
		return VIEW_PATH+"outCorManage";
	}
}
