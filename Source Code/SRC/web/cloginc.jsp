<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("cloud")&&pass.equals("cloud"))
    {
    out.println("<script>"
                    +"alert('Welcome Cloud  Server !!!!!')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/chome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("cloginc.jsp");
     rd.include(request, response);
            }
    
    %>

