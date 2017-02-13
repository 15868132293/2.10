package com.s;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.JSONObject;
import com.util.JdbcUtils;

public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		JSONObject jo = new JSONObject();
		List list = JdbcUtils.query("select * from student where studentname=?", new Object[]{name});
		System.out.print(list);
		if(list.isEmpty()){
			jo.put("status", "可以注册");
		}else{
			jo.put("status", "不能注册");
		}
		out.print(jo);
		out.close();
	}

}
