<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Jardin Infaltil Smart Kids</title>
		<link rel="stylesheet" href="css/estilos.css">
		<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
		
		<script type="text/javascript">
			$(document).ready(function(){
				$('#commit').click(function(){
					var data = $("#formUsers").serialize();
					$.ajax({
						type:"post",
		                url:"JardinServlet",
		                data:data,
		                success:function(response){
		                	alert(response);
		                }	
					});
					
				});		
			});	
	</script>
	</head>

	<body>
		<section class="container" id="container">
			<div class="login" id="login">
		      <h1>Jardín infantil Smart Kids</h1>
		      <form method="POST" action="" id="formUsers" name="formUsers">
		        <p><input type="text" name="login" id="login" placeholder="Usuario" maxlength="9"></p>
		        <p><input type="password" name="password" id="password" placeholder="Password" maxlength="9"></p>
		        <p class="remember_me">
		          <label>
		            <input type="checkbox" name="remember_me" id="remember_me">
		            Recordarme usuario y passwordgbf ht nhtn
		          </label>
		        </p>
		        <p class="submit"><input type="submit" name="commit" id="commit" value="Login"></p>
		      </form>
		    </div>
		</section>    
	</body>
</html>