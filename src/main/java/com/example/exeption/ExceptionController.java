package com.example.exeption;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	
	private Log logger = LogFactory.getLog(ExceptionController.class);

	//error handler - for all controllers in an app
	@ExceptionHandler
	public String handleExeptons(HttpServletRequest request, Exception exep) {
		logger.error("Request: " + request.getRequestURL() + " raised " + exep);
		return "error";
	}

}
