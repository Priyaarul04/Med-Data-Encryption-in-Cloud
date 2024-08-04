<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("key")&&pass.equals("key"))
    {
    out.println("<script>"
                    +"alert('Welcome Key Management !!!!!')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/khome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("kloginc.jsp");
     rd.include(request, response);
            }
    
    %>

