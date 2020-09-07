<%@page import="java.time.format.TextStyle"%>
<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.temporal.WeekFields"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormatSymbols"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar calendar = Calendar.getInstance();
	int nYear = calendar.get(Calendar.YEAR);
	int nMonth = calendar.get(Calendar.MONTH);
	
	int startDay = calendar.get(Calendar.DAY_OF_WEEK); 
	int lastDay = calendar.getActualMaximum(Calendar.DATE);
	
	

%>
<h4></h4>
year : <input type="text" name = "year" />
month : 
<select>
<%
// 	Calendar.

%>
</select>
<!-- locale -->
<select>

</select>
<!-- TimeZone -->
<select>
</select>
<table border="1">
	<tr>
		<%
		Locale lc = Locale.KOREA;
		WeekFields wf = WeekFields.of(lc);
		DayOfWeek day = wf.getFirstDayOfWeek();
		
		String pattern = "<th>%s</th>";
		
		String language = Locale.KOREAN.toString();
		 for (int i = 0; i < DayOfWeek.values().length; i++) {
	         out.println(String.format(pattern, day.getDisplayName(TextStyle.SHORT, lc)));
	         day = day.plus(1);
	      }
		%>
	</tr>
<%
	String pattern2 = "<th>%s</th>";
	Date date = new Date();
	for(int i = 0; i <= lastDay; i++){
		out.println();
		if(i<startDay-1){
			out.println(String.format(pattern2, ""));
		}
	}

%>
</table>
</body>
</html>







