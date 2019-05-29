package kr.co.webproject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.webproject.domain.Servey;
import kr.co.webproject.service.ServeyService;
import kr.co.webproject.service.logic.ServeyServiceLogic;

public class ServeyServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServeyService service=new ServeyServiceLogic();
		
		Servey servey=new Servey();
		servey.setServey(Integer.decode(request.getParameter("r1")), 0);
		servey.setServey(Integer.decode(request.getParameter("r2")), 1);
		servey.setServey(Integer.decode(request.getParameter("r3")), 2);
		servey.setServey(Integer.decode(request.getParameter("r4")), 3);
		servey.setServey(Integer.decode(request.getParameter("r5")), 4);
		servey.setServey(Integer.decode(request.getParameter("r6")), 5);
		servey.setServey(Integer.decode(request.getParameter("r7")), 6);
		servey.setServey(Integer.decode(request.getParameter("r8")), 7);
		/*
		for(int i=0;i<=7;i++) {
			servey.setServey(Integer.decode(request.getParameter("r"+i+1)), i);
		}*/
		
		service.set(servey);
		
		response.sendRedirect("ServeyResult.do");

	}

}
