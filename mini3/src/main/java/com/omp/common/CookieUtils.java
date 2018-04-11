package com.omp.common;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtils {

	private static final String encoding = "UTF-8";
	private static final String path = "/";

	public List<String> getValueList(String key, HttpServletRequest request) throws UnsupportedEncodingException {
		Cookie[] cookies = request.getCookies();
		String[] cookieValues = null;
		String value = "";
		List<String> list = null;

		// 특정 key의 쿠키값을 ","로 구분하여 String 배열에 담아준다.
		// ex) 쿠키의 key/value ---> key = "clickItems", value = "211, 223, 303"(상품 번호)
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals(key)) {
					value = cookies[i].getValue();
					cookieValues = (URLDecoder.decode(value, encoding)).split(",");
					break;
				}
			}
		}

		// String 배열에 담겼던 값들을 List로 다시 담는다.
		if (cookieValues != null) {
			list = new ArrayList<String>(Arrays.asList(cookieValues));

			if (list.size() > 5) { // 값이 5개를 초과하면, 최근 것 3개만 담는다.
				int start = list.size() - 5;
				List<String> copyList = new ArrayList<String>();
				for (int i = start; i < list.size(); i++) {
					copyList.add(list.get(i));
				}
				list = copyList;
			}
		}
		return list;
	}

	public void setCookie(String key, String value, int day, HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {
		List<String> list = getValueList(key, request);
		String sumValue = "";
		int equalsValueCnt = 0;

		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				sumValue += list.get(i) + ",";
				if (list.get(i).equals(value)) {
					equalsValueCnt++;
				}
			}
			if (equalsValueCnt != 0) { // 같은 값을 넣으려고 할 때의 처리
				if (sumValue.substring(sumValue.length() - 1).equals(",")) {
					sumValue = sumValue.substring(0, sumValue.length() - 1);
				}
			} else {
				sumValue += value;
			}
		} else {
			sumValue = value;
		}

		if (!sumValue.equals("")) {
			Cookie cookie = new Cookie(key, URLEncoder.encode(sumValue, encoding));
			cookie.setMaxAge(60 * 60 * 24 * day);
			cookie.setPath(path);
			response.addCookie(cookie);
		}
	}

	public Cookie createNewCookie(String key, String value, int day, HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		Cookie cookie = new Cookie(key, URLEncoder.encode(value, encoding));
		cookie.setPath(path);
		cookie.setMaxAge(60 * 60 * 24 * day);
		response.addCookie(cookie);
		return cookie;
	}

	public HashMap<String, Cookie> getValueMap(HttpServletRequest request) {
		HashMap<String, Cookie> cookieMap = new HashMap<>();

		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]);
			}
		}

		return cookieMap;
	}

	public String getValue(String key, HttpServletRequest request) throws UnsupportedEncodingException {
		Cookie cookie = (Cookie) getValueMap(request).get(key);
		if (cookie == null)
			return null;
		return URLDecoder.decode(cookie.getValue(), encoding);
	}

	public boolean isExist(String key, HttpServletRequest request) {
		return getValueMap(request).get(key) != null;
	}
}