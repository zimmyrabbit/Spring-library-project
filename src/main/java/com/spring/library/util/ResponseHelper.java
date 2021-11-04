package com.spring.library.util;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ResponseHelper {

	private static final Logger logger = LoggerFactory.getLogger(ResponseHelper.class);

	public static void sendJSON(HttpServletResponse response, JSONObject jsonObject) {
		try {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write(jsonObject.toString());
		} catch (IOException e) {
			logger.error("~~ [An error occurred]", e);
		}
	}

	public static void sendJSON(HttpServletResponse response, JSONArray jsonArray) {
		try {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write(jsonArray.toString());
		} catch (IOException e) {
			logger.error("~~ [An error occurred]", e);
		}
	}

	public static void sendJSON(HttpServletResponse response, String jsonObject) {
		try {
			response.setContentType("text/html; charset=utf-8");
			response.getWriter().write(jsonObject);
		} catch (IOException e) {
			logger.error("~~ [An error occurred]", e);
		}
	}

	public static void sendBytes(HttpServletResponse response, byte[] data) {
		try {
			response.setContentType("application/octet-stream");
			response.getOutputStream().write(data);
		} catch (IOException e) {
			logger.error("~~ [An error occurred]", e);
		}
	}
	
}
