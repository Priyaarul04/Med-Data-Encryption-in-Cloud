<%@page import="java.sql.*"%>
<%try{
            String id=request.getParameter("id");
            String user=request.getParameter("user");
            String email=request.getParameter("email");
            String mobile=request.getParameter("mobile");
            String paname=request.getParameter("paname");
            String keyword=request.getParameter("keyword");
             String image=request.getParameter("image");
            String skey=request.getParameter("skey");
            String tkey=request.getParameter("tkey");
            String uid=session.getAttribute("id").toString();
            String uname=session.getAttribute("user").toString();
           
            
            int i=1;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/proxy","root","root");
           PreparedStatement ps=con.prepareStatement("insert into porequest(id,user,email,mobile,paname,keyword,image,skey,tkey)values('"+id+"','"+user+"','"+email+"','"+mobile+"','"+paname+"','"+keyword+"','"+image+"','"+skey+"','"+tkey+"')");
             System.out.println(ps); 
             ps.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Request Send  Successfully..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("oreqproxy.jsp");
            rd.include(request, response);  
            }
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again.\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("oreqproxy.jsp");
            rd.include(request, response);  
        }
    
%>