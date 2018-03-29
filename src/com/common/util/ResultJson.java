package com.common.util;

import org.apache.commons.lang.StringUtils;

import net.sf.json.JSONObject;

/**
 * 涓氬姟璋冪敤鎴栨暟鎹鐞嗙粨鏋�
 * O
 * @author gjq
 * 
 */
public class ResultJson {
	/**
	 * 成功	ESULT_CODE_SUCCESS = "01";
	 */
	public static final String	RESULT_CODE_SUCCESS	= "01";

	/**
	 * 失败	ESULT_CODE_FAILED = "02";
	 */
	public static final String	RESULT_CODE_FAILED	= "02";

	/**
	 * 异常	ESULT_CODE_OTHER = "03";
	 */
	public static final String	RESULT_CODE_OTHER	= "03";

	// json key
	static String	           KEY_RESULT_CODE	    = "result";
	static String	           KEY_RESULT_MESSAGE	= "msg";

	/**
	 * 鎴愬姛 01
	 */
	public static ResultJson	SUCCESS	            = new ResultJson("01", "操作成功！");
	/**
	 *鍙傛暟涓嶅叏02
	 */
	public static ResultJson	FAILED	            = new ResultJson("02", "操作失败！");
	/**
	 * 缂栫爜
	 */
	private String	           code;

	/**
	 * 淇℃伅
	 */
	private String	           msg;

	public ResultJson() {

	}

	/**
	 * 鏋勯�鍑芥暟锛屾牴鎹笟鍔¤皟鐢ㄧ粨鏋渏son鍙嶅悜瑙ｆ瀽<br/>
	 * 
	 * @param jsonStr
	 *            鐩稿綋浜�code>this.toJsonString()</code>
	 */
	public ResultJson(String jsonStr) {
		JSONObject json = JSONObject.fromObject(jsonStr);

		if (json.containsKey(KEY_RESULT_CODE) == false) {
			throw new RuntimeException("ResultJson::异常" + jsonStr);
		}

		if(json.containsKey(KEY_RESULT_CODE)){
			this.code = json.getString(KEY_RESULT_CODE);
		}
	}

	public ResultJson(String code, String msg) {
		this.code = code;
		this.msg = msg;
	}

	/**
	 * 鍒ゆ柇鎿嶄綔鏄惁鎴愬姛
	 * 
	 * @return
	 */
	public boolean isSucuess() {
		if (this == SUCCESS) {
			return true;
		}

		return StringUtils.equals(SUCCESS.code, this.code);
	}

	public JSONObject toJson(){
		JSONObject json = new JSONObject();
		json.put(KEY_RESULT_CODE, this.code);
		json.put(KEY_RESULT_MESSAGE, this.msg);
		
		return json;
	}
	public String toJsonString() {
		return this.toJson().toString();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}



}
