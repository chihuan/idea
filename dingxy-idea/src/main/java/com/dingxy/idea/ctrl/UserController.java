/**
 * 
 */
package com.dingxy.idea.ctrl;

import java.io.UnsupportedEncodingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String login(String userName, String passwd)
			throws UnsupportedEncodingException {
		LOGGER.info("userName：{} passwd：{}", userName, passwd);

		return ("丁小样".equals(userName) && "654321".equals(passwd)) ? "OK" : "用户名密码错误！";
	}

}
