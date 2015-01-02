/**
 * 
 */
package com.dingxy.idea.domain;

/**
 * Idea异常
 * 
 * @author craneding
 * @date 2015年1月1日 下午11:21:39
 * @description Copyright (c) 2015, isuwang.com All Rights Reserved.
 */
public class IdeaExcepton extends Exception {

	private static final long serialVersionUID = -8846692445675943759L;

	private String responseCode;
	private String responseMsg;

	public IdeaExcepton(String responseCode, String responseMsg) {
		this.responseCode = responseCode;
		this.responseMsg = responseMsg;
	}

	public String getResponseCode() {
		return responseCode;
	}

	public String getResponseMsg() {
		return responseMsg;
	}
}
