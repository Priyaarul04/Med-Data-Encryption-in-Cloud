<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("trust")&&pass.equals("trust"))
    {
    out.println("<script>"
                    +"alert('Welcome Trust Authority !!!!!')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/thome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("tloginc.jsp");
     rd.include(request, response);
            }
    
    %>

