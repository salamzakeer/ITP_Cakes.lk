<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="Connection.DbConnection"%>
 <%String id=request.getParameter("id"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<link rel="icon" href="img/fav-icon.png" type="image/x-icon" />
    <title>Admin page</title>
   
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/admin/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin/cakes_lk_admin.css" rel="stylesheet">
    
  </head>
  <body>  
    <!-- Left column -->
    <div class="cakes-flex-row">
      <div class="cakes-sidebar">
        <header class="cakes-site-header">
          <h1>Dream Destination</h1>
        </header>    
        <br>
        <nav class="cakes-left-nav">          
          <ul>
            <li><a href=""><i class="fa fa-users fa-fw"></i>Customers</a></li>
            <li><a href="Admin-EmployeeView.jsp" class="active"><i class="fa fa-users fa-fw"></i>Employee</a></li>
            <li><a href=""><i class="fa fa-users fa-fw"></i>Supplier</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Products</a></li>
            <li><a href="AdminViewCakes.jsp"><i class="fa fa-sliders fa-fw"></i>Cakes</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Designing Cakes</a></li>
            <li><a href="AdminViewCustomerOrderedCake.jsp"><i class="fa fa-sliders fa-fw"></i>Cake Orders</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Account</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Delivery</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Payment</a></li>
            <li><a href=""><i class="fa fa-sliders fa-fw"></i>Feedback</a></li>          
            <li style="padding: 20px 47px;"  class="login"><form action="Logout" class="logout" method="post">
							 <button  class="cakes-blue-button" >Logout</button>
   						</form> </li>
          </ul> 
        </nav>
      </div>
      
      <!-- Main content --> 
          <div class="cakes-content col-1 light-gray-bg"> 
        <div class="cakes-content-container">
          <div class="cakes-content-widget white-bg">
            <h2 class="margin-bottom-10 text-center">Edit Terminated Employee</h2>
            
               <%

			try{
					Connection con = DbConnection.getDBConnection(); 
	 		        Statement myStm= con.createStatement();
	 		       	String query  ="SELECT * FROM temployee WHERE teid='"+id+"'";

    				ResultSet  resultSet = myStm.executeQuery(query);
    
      			while(resultSet.next()){
    	  
    	  
%>
            
            <form action="TerminatedEmpEdit" name="add-terminated-employee" class="dream-destination-login-form" method="POST">   
              <div class="row form-group">
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>NIC ID</label>
                    <input type="text" class="form-control" id="teid" name="teid"  value="<%=resultSet.getString("teid") %>">                  
                </div>
                <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Name</label>
                    <input type="text" class="form-control" id="tename"name="tename" value="<%=resultSet.getString("tename") %>">                  
                </div> 
              </div>
                            <div class="row form-group">
			  <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Phone No</label>
                    <input type="text" class="form-control" id="tepno" name="tepno"  value="<%=resultSet.getString("tepno") %>">                  
                </div>
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Employee Email </label>
                    <input type="text" class="form-control" id="teemail" name="teemail"  value="<%=resultSet.getString("teemail") %>">    
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Employee Job Title</label>
                    <input type="text" class="form-control" id="tejobtitle" name="tejobtitle"  value="<%=resultSet.getString("tejobtitle") %>">                  
                </div> 
              </div>
              <div class="row form-group">
              	<div class="col-lg-6 col-md-6 form-group">                                  
                    <label>Employee Date Start</label>
                    <input type="text" class="form-control" id="edstart" name="edstart"  value="<%=resultSet.getString("edstart") %>">    
                </div>
              	 <div class="col-lg-6 col-md-6 form-group">                  
                    <label>Resignation Date</label>
                    <input type="text" class="form-control" id="edend" name="edend"  value="<%=resultSet.getString("edend") %>">                  
                </div> 
              </div>

                
              </div>

              <div class="form-group text-center">
                <button type="submit"class="cakes-blue-button">Update</button>
              </div>   
            </form>      
                       <% 
				}
      
      			con.close();
      
			} 
			
			catch (Exception e) {
				e.printStackTrace();
			}
%>                      
          </div>
        </div>
	  </div>
  </body>
</html>