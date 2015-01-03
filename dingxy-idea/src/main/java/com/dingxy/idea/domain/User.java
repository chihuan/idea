/**
 * 
 */
package com.dingxy.idea.domain;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * 会员信息
 * 
 * @author craneding
 * @date 2015年1月3日 下午4:27:15
 * @description Copyright (c) 2015, isuwang.com All Rights Reserved.
 */
public class User implements Serializable {

	private static final long serialVersionUID = -8061486955066193973L;

	@NotNull(message = "用户名不能为空！")
	@Size(min = 3, max = 32, message = "请输入正常的用户名！")
	private String userName;

	@NotNull(message = "密码不能为空！")
	@Size(min = 6, max = 32, message = "请输入正常的密码！")
	private String passwd;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

}
