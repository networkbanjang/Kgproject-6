<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String fileName = request.getParameter("filename");
	String writeId = request.getParameter("writeid");


	String saveFolder = "C:\\javas\\upload\\" + writeId + "\\" + fileName;
	File file = new File(saveFolder);
	FileInputStream iStream = new FileInputStream(file);
	
	ServletOutputStream oStream = response.getOutputStream();
	out.clear();
	out = pageContext.pushBody();
	
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
	
	byte[] b = new byte[1024];
	while(true){
		int currentDataSize = iStream.read(b, 0, b.length); // 서버에 위치한 파일읽기
		if(currentDataSize == -1)
			break;
		oStream.write(b, 0 , currentDataSize); // 배열에 담긴 데이터 클라이언트에게 송신하기.
	}
	
	iStream.close();
	
%>