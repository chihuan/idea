/**
 * 
 */
package com.dingxy.idea.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 错误Controller
 * 
 * @author craneding
 * @date 2015年1月2日 下午3:36:11
 * @description Copyright (c) 2015, isuwang.com All Rights Reserved.
 */
@Controller
@RequestMapping("/err")
public class ErrorController {

	@RequestMapping(value = "404", method = RequestMethod.GET)
	public void e404() {
	}

	@RequestMapping(value = "500", method = RequestMethod.GET)
	public void e500() {
	}
}
