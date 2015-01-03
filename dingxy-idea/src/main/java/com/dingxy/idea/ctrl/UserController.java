/**
 * 
 */
package com.dingxy.idea.ctrl;

import java.io.UnsupportedEncodingException;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dingxy.idea.domain.User;

/**
 * 会员Controller
 * 
 * @author craneding
 * @date 2015年1月2日 上午12:18:14
 */
@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public String login(@Valid User user, BindingResult result)
			throws UnsupportedEncodingException {
		LOGGER.info("userName：{} passwd：{}", user.getUserName(), user.getPasswd());
		
//		if (result.hasErrors())  
//	           return "user/login";  
//	       return "redirect:/";
		
		if(result.hasErrors()) 
			return result.getFieldError().getDefaultMessage();

		return ("丁小样".equals(user.getUserName()) && "654321".equals(user.getPasswd())) ? "OK" : "用户名密码错误！";
	}

}
