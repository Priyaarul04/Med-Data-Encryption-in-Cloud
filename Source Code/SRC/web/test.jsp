         <main >
                    <style>
                    tr,td{
                                        
                                        font-size: 15px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        margin-left:100px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid black;
                                        border-radius: 20px;
                        		padding:5px;
                        		text-align:center;
                                        
                                        color: #00cae3;
                                        
                    }
                    th{
                                        color: #00cae3;
                    }
                    table{
                                        height: auto;
                                        width: 500px;
                        }
                        td{
                            color: black;
                        }
                        	
                        	
                </style>

    
        <div class="header-text">
            <br>
            <br>
            <br>
            <h2 align="center" style=" margin-top: -200px;  color: #491bb1; font-weight: bold; font-size: 30px; ">View all  Uploaded Files and Information !</h2><br><br>
   <div class="container">
       <br>
     
                <table style="margin-left: 300px;">
                            <tr>
                            <th>ID</th>
                            <th>Username</th> 
                            <th>Patient Name</th>
                            <th>Age</th>
                            <th>Diseases</th>
                            <th>Files</th>
                           </tr>
  <%                    
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proxy","root","root");
                        PreparedStatement query=con.prepareStatement("select * from upload");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                         %>
      
       
                            <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("user")%></td>  
                            <td><%=rs.getString("paname")%></td>
                            <td><%=rs.getString("page")%></td>
                           <td><%=rs.getString("dises")%></td>
                            <td><%=rs.getString("image")%></td> 
                            </tr>
                            <%}%></table> </form>  
                    <br><br><br><br></div></div></div>  
                   
                </main>
                    