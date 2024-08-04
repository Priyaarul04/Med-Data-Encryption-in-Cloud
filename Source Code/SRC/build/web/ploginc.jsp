<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("proxy")&&pass.equals("proxy"))
    {
    out.println("<script>"
                    +"alert('Welcome Proxy  Server1 !!!!!')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/phome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("ploginc.jsp");
     rd.include(request, response);
            }
    
    %>
