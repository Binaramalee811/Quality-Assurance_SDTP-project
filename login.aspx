<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />



    <style>
ul {
  list-style-type: none;
    margin-left:100px;
  padding: 0;
  overflow: hidden;
   white-space: nowrap;
   color:black;
 // border: 1px solid #e7e7e7;
 // background-color: #f3f3f3;
}

li {
  float: right;
  margin-left:100px;
   white-space: nowrap;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color:red;
}

li a.active {
  color: black;
 // background-color: #04AA6D;

 
}
        #id1 {
              float:right;
             white-space: nowrap;
}



		@import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;	
	font-family: Raleway, sans-serif;
}

body {
//background: linear-gradient(90deg, #C7C5F4, #776BCC);		
	background-color:#1d243d;
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	margin-bottom:400px;
}

.screen {		
	background: linear-gradient(90deg, #5D54A4, #7C78B8);		
	position: relative;	
	height: 600px;
	width: 360px;	
	box-shadow: 0px 0px 24px #5C5696;
}

.screen__content {
	z-index: 1;
	position: relative;	
	height: 100%;
}

.screen__background {		
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 0;
	-webkit-clip-path: inset(0 0 0 0);
	clip-path: inset(0 0 0 0);	
}

.screen__background__shape {
	transform: rotate(45deg);
	position: absolute;
	margin-top:20px;
}

.screen__background__shape1 {
	height: 520px;
	width: 520px;
	background: #FFF;	
	top: -50px;
	right: 120px;	
	border-radius: 0 72px 0 0;
}

.screen__background__shape2 {
	height: 220px;
	width: 220px;
	background: #6C63AC;	
	top: -172px;
	right: 0;	
	border-radius: 32px;
}

.screen__background__shape3 {
	height: 540px;
	width: 190px;
	background: linear-gradient(270deg, #5D54A4, #6A679E);
	top: -24px;
	right: 0;	
	border-radius: 32px;
}

.screen__background__shape4 {
	height: 400px;
	width: 200px;
	background: #7E7BB9;	
	top: 420px;
	right: 50px;	
	border-radius: 60px;
}

.login {
	width: 320px;
	padding: 30px;
	padding-top: 156px;
}

.login__field {
	padding: 20px 0px;	
	position: relative;	
}

.login__icon {
	position: absolute;
	top: 30px;
	color: #7875B5;
}

.login__input {
	border: none;
	border-bottom: 2px solid #D1D1D4;
	background: none;
	padding: 10px;
	padding-left: 24px;
	font-weight: 700;
	width: 75%;
	transition: .2s;
}

.login__input:active,
.login__input:focus,
.login__input:hover {
	outline: none;
	border-bottom-color: #6A679E;
}

#login__submit {
	background: #fff;
	font-size: 14px;
	margin-top: 30px;
	padding: 16px 20px;
	border-radius: 26px;
	border: 1px solid #D4D3E8;
	text-transform: uppercase;
	font-weight: 700;
	display: flex;
	align-items: center;
	width: 100%;
	color: #4C489D;
	box-shadow: 0px 2px 2px #5C5696;
	cursor: pointer;
	transition: .2s;
}

#login__submit:active,
#login__submit:focus,
#login__submit:hover {
	border-color: #6A679E;
	outline: none;
}

.button__icon {
	font-size: 24px;
	margin-left: auto;
	color: #7875B5;
}

.social-login {	
	position: absolute;
	height: 140px;
	width: 160px;
	text-align: center;
	bottom: 0px;
	right: 0px;
	color: #fff;
}

.social-icons {
	display: flex;
	align-items: center;
	justify-content: center;
}

.social-login__icon {
	padding: 20px 10px;
	color: #fff;
	text-decoration: none;	
	text-shadow: 0px 0px 8px #7875B5;
}

.social-login__icon:hover {
	transform: scale(1.5);	
}
    	#TextBox1 {
    		font-size: 19px;
    		font-family: 'Times New Roman', Times, serif;
    	}
		#TextBox2{
	font-size: 19px;
	font-family:'Times New Roman', Times, serif;


}
#id3{
	margin-top:-80px;
}
#id2{
	
	width:1530px;
	height:150px;
	//border: 1px solid black;
	background-color:#1d243d;
	margin-top:-10px;
	

}
#id1{
	margin-top:45px;
}
#Button1{
	margin-left:10px;


}
    	#Label1 {
			margin-top:-100px;
    	}


#DropDownList1{
		font-size: 19px;
	font-family:'Times New Roman', Times, serif;

}
    	#Label1 {
    		color: white;
    		font-size: 23px;
			font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
			margin-top:-80px;
    	}


.classone{
	margin-left:200px;
	margin-top:-70px;

}





















	
</style>



























</head>
<body>

	                                               
  
        <div id="id2">
          <img src="images/Untitled design.png"  alt="HTML5 Icon" width="120" height="120">
		  <div class="classone">
			   <asp:Label ID="Label1" runat="server" Text="Student Accomadation"></asp:Label>
			  </div>
        </div>
	 

	<br />

    
	<div id="id3"
<div class="container">
	<div class="screen">
		<div class="screen__content">
			<form class="login">
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					 <form id="form1" runat="server">
						 <i class="fas fa-band-aid"></i>
						 	<i class="login__icon fas fa-user"></i>
					<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your National ID"></asp:TextBox>
				</div>
				<br />

				<asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="235px" placeholder="Select your user type">
                    <asp:ListItem>Landlord</asp:ListItem>
                    <asp:ListItem>Warden</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    
        </asp:DropDownList>
				<br /><br />
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
					
				</div>
				
			
					<asp:Button ID="login__submit" runat="server" Text="LogIn" OnClick="login__submit_Click" />

					
					<i class="button__icon fas fa-chevron-right">
				<asp:Button ID="Button1" runat="server" Text="Create your Account" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" />
				
			</i>
				<asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>

				
				<asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
				<asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
				<asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
				<asp:TextBox ID="TextBox13" runat="server" Visible="False"></asp:TextBox>
				
			</form>
			<div class="social-login">
				<h3>log in via</h3>
				<div class="social-icons">
					<a href="#" class="social-login__icon fab fa-instagram"></a>
					<a href="#" class="social-login__icon fab fa-facebook"></a>
					<a href="#" class="social-login__icon fab fa-twitter"></a>
				</div>
			</div>
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>	
		
	</div>
	
</div>
		</div>



	
















        
    
</body>
</html>
