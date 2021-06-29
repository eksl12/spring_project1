package test.gradle.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//log4j2 test
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@RestController
public class LogController {
    //log4j2 init
    private static final Logger logger = LogManager.getLogger(TestController.class);

	//테스트 페이지
    @ResponseBody
	@GetMapping("/log")
	public String logTest() {
        logger.info("info log test");
        logger.warn("warn log test");
        logger.error("error log test");
        logger.fatal("fatal log test");
		return "log test";
	}
}
