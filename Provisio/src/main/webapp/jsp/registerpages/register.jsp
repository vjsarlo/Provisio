<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

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
				  height: 560px;
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
				  margin-top: 0px;
				  width: auto;
				}
				
				.subtitle {
				  color: #eee;
				  font-family: sans-serif;
				  font-size: 16px;
				  font-weight: 600;
				  margin-bottom: 0px;
				}
				
				.input-container {
				  height: 50px;
				  position: relative;
				  width: 100%;
				  margin-bottom: 20px;
				}
				
				.ic1 {
				  margin-top: 20px;
				}
				
				.ic2 {
				  margin-top: 20px;
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
				  color: #957554;
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
				  margin-top: 40px;
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
                    <a href="/Provisio/jsp/loginpages/login.jsp"> Already A Part Of Our Team? Login Here! </a>
                </div>
            </header>
            <br>
            <div class="form">
                <div>
                    <div>
                    	 <h2 class="title">
	                         Welcome To Our Family!<br> We Can't Wait To Meet You!
	                     </h2> 
                    	<form method="post" action="${pageContext.request.contextPath}/register" class="register-form" id="register-form">
							<span style="color:red">${messages.message}</span>	
	                        <fieldset>
	                            <div class="input-container ic1">
							        <input id="firstname" class="input" type="text" placeholder=" " value="" name="firstname" required="required"/>
							        <div class="cut"></div>
							        <label for="firstname" class="placeholder">First Name</label>
							    </div>
	                        </fieldset>
	                        
	                        <fieldset>
	                            <div class="input-container ic2">
							        <input id="lastname" class="input" type="text" placeholder=" " value="" name="lastname" required="required"/>
							        <div class="cut"></div>
							        <label for="lastname" class="placeholder">Last Name</label>
							    </div>
	                        </fieldset>
	                        
	                        <fieldset>
	                            <div class="input-container ic2">
							        <input id="email" class="input" type="text" placeholder=" " value="" name="email" required="required"/>
							        <div class="cut"></div>
							        <label for="email" class="placeholder">Email</label>
							    </div>
	                        </fieldset> 
	                        
	                        <fieldset>
	                            <div class="input-container ic2">
							        <input id="password" class="input" type="text" placeholder=" " value="" name="password" required="required"/>
							        <div class="cut"></div>
							        <label for="password" class="placeholder">Password</label>
							    </div>
	                        </fieldset>
	                        
 									                       
	                        <button type="submit" class="submit">Register!</button>
                        </form>
                    </div>                  
                </div>
            </div>
             
			    
        </body>

        </html>