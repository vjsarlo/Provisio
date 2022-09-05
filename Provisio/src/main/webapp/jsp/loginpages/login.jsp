<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Provisio Login</title>
            <style>
				body {
				  margin: 0;
				  font-family: Arial, Helvetica, sans-serif;
				  background: linear-gradient(20deg, #957554, #192537);
				}
				
				.topnav {
				  overflow: hidden;
				  background-color: #957554;
				}
				
				.topnav a {
				  float: left;
				  color: #f2f2f2;
				  text-align: center;
				  padding: 14px 16px;
				  text-decoration: none;
				  font-size: 17px;
				}
				.topnav a.active {
				  background-color: #192537;
				  color: white;
				}				
				.topnav a:hover {
				  background-color: #dfaa5b;
				  color: black;
				}
				
				.form {
				  background-color: #15172b;
				  border-radius: 20px;
				  height: 400px;
				  padding: 20px;
				  width: 500px;
				  text-align: center;
				  margin: auto;
				}
				
				.title {
				  color: #eee;
				  font-family: sans-serif;
				  font-size: 36px;
				  font-weight: 600;
				  margin-top: 30px;
				  width: auto;
				}
				
				.subtitle {
				  color: #eee;
				  font-family: sans-serif;
				  font-size: 16px;
				  font-weight: 600;
				  margin-bottom: 20px;
				}
				
				.input-container {
				  height: 50px;
				  position: relative;
				  width: 100%;
				  margin-bottom: 20px;
				}
				
				.ic1 {
				  margin-top: 40px;
				}
				
				.ic2 {
				  margin-top: 30px;
				}
				
				.input {
				  background-color: #303245;
				  border-radius: 12px;
				  border: 0;
				  box-sizing: border-box;
				  color: #eee;
				  font-size: 18px;
				  height: 100%;
				  outline: 0;
				  padding: 4px 20px 0;
				  width: 100%;
				}
				
				.cut {
				  background-color: #15172b;
				  border-radius: 10px;
				  height: 20px;
				  left: 20px;
				  position: absolute;
				  top: -20px;
				  transform: translateY(0);
				  transition: transform 200ms;
				  width: 125px;
				}
				
				.cut-short {
				  width: 50px;
				}
				
				.input:focus ~ .cut,
				.input:not(:placeholder-shown) ~ .cut {
				  transform: translateY(8px);
				}
				
				.placeholder {
				  color: #65657b;
				  font-family: sans-serif;
				  left: 20px;
				  line-height: 14px;
				  pointer-events: none;
				  position: absolute;
				  transform-origin: 0 25%;
				  transition: transform 200ms, color 200ms;
				  top: 20px;
				}
				
				.input:focus ~ .placeholder,
				.input:not(:placeholder-shown) ~ .placeholder {
				  transform: translateY(-30px) translateX(10px) scale(0.75);
				}
				
				.input:not(:placeholder-shown) ~ .placeholder {
				  color: #808097;
				}
				
				.input:focus ~ .placeholder {
				  color: #dfaa5b;
				}
				
				.submit {
				  background-color: #957554;
				  border-radius: 12px;
				  border-width: 5px;
				  border-style: solid;
				  border-color: #192537;
				  box-sizing: border-box;
				  color: #eee;
				  cursor: pointer;
				  font-size: 18px;
				  height: 50px;
				  margin-top: 38px;
				  outline: 0;
				  text-align: center;
				  width: 50%;
				}
				
				.submit:hover {
				  background-color: #dfaa5b;
				  color: #192537;
				}			
			</style>
        </head>

        <body>

            <header>
                <div class="topnav">
                    <a class="active" href="/Provisio/jsp/index.jsp"> Home </a>
                    <a href="/Provisio/jsp/registerpages/register.jsp"> Join Us! Register Here!</a>
                </div>
            </header>
            <br>
            <div class="form">
                <div>
                    <div>
                    	<form action = "loginprocess.jsp" method = "post">
	                        <caption>
	                            <h2 class="title">
	                                    Welcome Back to Provisio! Please Sign In!
	                            </h2>    						
	                        </caption>
	                        
	                        <fieldset>
	                            <div class="input-container ic1">
							        <input id="email" class="input" type="text" placeholder=" " 
							        value="<c:out value='${loginBean.email}' />" name="email" required="required"/>
							        <div class="cut"></div>
							        <label for="email" class="placeholder">Email</label>
							    </div>
	                        </fieldset> 
	                        
	                        <fieldset>
	                            <div class="input-container ic2">
							        <input id="password" class="input" type="text" placeholder=" " 
							        	value="<c:out value='${loginBean.password}' />" name="password" required="required"/>
							        <div class="cut"></div>
							        <label for="password" class="placeholder">Password</label>
							    </div>
	                        </fieldset>
	
	                        <button type="submit" class="submit">Login!</button>
                        </form>
                    </div>                  
                </div>
            </div>
             
			    
        </body>

        </html>