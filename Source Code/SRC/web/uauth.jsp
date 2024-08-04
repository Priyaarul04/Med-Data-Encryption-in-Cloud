<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String sno=request.getParameter("sno");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proxy","root","root");
PreparedStatement ps=con.prepareStatement("Update ureg set status='Activated' where sno='"+sno+"' ");
System.out.println(ps);
ps.executeUpdate();

out.println("<script>"
        +"alret ('Authorize User Sucessfully')"
         +"</script>");
        RequestDispatcher rd=request.getRequestDispatcher("/vuser1.jsp");
                    rd.include(request, response);



%>