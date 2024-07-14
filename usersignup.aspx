<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="login.usersignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>

@import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400');

body, html {
  font-family: 'Source Sans Pro', sans-serif;
  background-color: #1d243d;
  padding: 0;
  margin: 0;
}

#particles-js {
  position: absolute;
  width: 100%;
  height: 100%;
}

.container{
  margin: 0;
  top: 50px;
  left: 50%;
  position: absolute;
  text-align: center;
  transform: translateX(-50%);
  background-color: rgb( 33, 41, 66 );
  border-radius: 9px;
  border-top: 10px solid #79a6fe;
  border-bottom: 10px solid #8BD17C;
  width: 1000px;
  height: 740px;
  box-shadow: 1px 1px 108.8px 19.2px rgb(25,31,53);
}

.box h4 {
  font-family: 'Source Sans Pro', sans-serif;
  color: whitesmoke; 
  font-size: 25px;
  margin-top:94px;;
}

.box h4 span {
  color: whitesmoke;
  font-weight: lighter;
}

.box h5 {
  font-family: 'Source Sans Pro', sans-serif;
  font-size: 13px;
  color: whitesmoke;
  letter-spacing: 1.5px;
  margin-top: -15px;
  margin-bottom: 70px;
}

.box input[type = "text"],.box input[type = "password"] {
    border-style: none;
        border-color: inherit;
        border-width: 0;
        display: block;
        margin: 20px auto;
        background: #262e49;
        border-radius: 5px;
        padding: 14px 10px;
        outline: none;
        color: #d6d6d6;
        -webkit-transition: all .2s ease-out;
        -moz-transition: all .2s ease-out;
        -ms-transition: all .2s ease-out;
        -o-transition: all .2s ease-out;
        transition: all .2s ease-out;
  
}
::-webkit-input-placeholder {
  color: #565f79;
}

.box input[type = "text"]:focus,.box input[type = "password"]:focus {
  border: 1px solid #79A6FE;
  
}

a{
  color: #5c7fda;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

 label input[type = "checkbox"] {
  display: none; /* hide the default checkbox */
}

/* style the artificial checkbox */
label span {
  height: 13px;
  width: 13px;
  border: 2px solid #464d64;
  border-radius: 2px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  float: left;
  left: 7.5%;
}

#Button1 {
    border-style: none;
        border-color: inherit;
        border-width: 0;
        background: #7f5feb;
        color: #dfdeee;
        border-radius: 100px;
  width: 265px;
        height: 49px;
        font-size: 16px;
        position: absolute;
  top: 76%;
  left: 36%;
        transition: 0.3s;
        cursor: pointer;
        margin-left:8px;
}

#Button1:hover {
  background: #5d33e6;
}

.rmb {
  position: absolute;
  margin-left: -24%;
  margin-top: 0px;
  color: #dfdeee;
  font-size: 13px;
}

.forgetpass {
  position: relative;
  float: right;
  right: 28px;
}

.dnthave{
    position: absolute;
    top: 94%;
    left: 37%;
        width: 267px;
    }

[type=checkbox]:checked + span:before {/* <-- style its checked state */
    font-family: FontAwesome;
    font-size: 16px;
    content: "\f00c";
    position: absolute;
    top: -4px;
    color: #896cec;
    left: -1px;
    width: 13px;
}

.typcn {
  position: absolute;
  left: 339px;
  top: 282px;
  color: #3b476b;
  font-size: 22px;
  cursor: pointer;
}      

.typcn.active {
  color: #7f60eb;
}

.error {
  background: #ff3333;
  text-align: center;
  width: 337px;
  height: 20px;
  padding: 2px;
  border: 0;
  border-radius: 5px;
  margin: 10px auto 10px;
  position: absolute;
  top: 31%;
  left: 7.2%;
  color: white;
  display: none;
}

.footer {
    position: relative;
    left: 0;
    bottom: 0;
    top: 840px;
    width: 100%;
    color: #78797d;
    font-size: 14px;
    text-align: center;
}

.footer .fa {
  color: #7f5feb;;
}
#TextBox1{
    margin-left:173px;
}
#TextBox2{
    margin-left:22px;
}
#TextBox3{
     margin-left:173px;
}
#TextBox4{
     margin-left:173px;

}
#TextBox13{
    
     margin-left:173px;
}
#TextBox14{
    
     margin-left:173px;
}
#TextBox15{
    
     margin-left:173px;
}
#TextBox16{
    
     margin-left:173px;
}
#TextBox5{
     margin-left:230px;
}
h4{
    color:white;

}
 h5{
    color:white;
}





























































































































</style>
    

</head>
<body>
    <div id>
    <form id="form1" runat="server"><body id="particles-js"></body>
<div class="animated bounceInDown">
  <div class="container">
    <span class="error animated tada" id="msg"></span>
      <asp:TextBox ID="TextBox17" runat="server" Height="16px" style="margin-left: 513px" Width="16px" Visible="False"></asp:TextBox>
    <form name="form1" class="box" onsubmit="return checkStuff()">
      <h4>Landloard Signup<span></span></h4>
      <h5>Sign Up to your account.</h5>
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="285px" Placeholder="Enter your NationalID"> </asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Required field" ControlToValidate="TextBox1" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
      
   
        <br /><br />
   
        <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="285px" placeholder="Enter your fullname"></asp:TextBox>      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Required field" ControlToValidate="TextBox3" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
      

        <br /><br />
          <asp:TextBox ID="TextBox13" runat="server" Height="32px" Width="285px" placeholder="Enter your email"></asp:TextBox>      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the Required field" ControlToValidate="TextBox13" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
      
        <br /><br />
         <asp:TextBox ID="TextBox14" runat="server" Height="32px" Width="285px" placeholder="Enter your Phone Number"></asp:TextBox>      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter the Required field" ControlToValidate="TextBox14" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
      
        <br /><br />
             <asp:TextBox ID="TextBox15" runat="server" Height="32px" Width="285px" placeholder="Enter your Address"></asp:TextBox>           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter the Required field" ControlToValidate="TextBox15" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
      
        <br /><br />
            <asp:TextBox ID="TextBox16" runat="server" Height="32px" Width="285px" placeholder="Enter your Landloard Pass No"></asp:TextBox>       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter the Required field" ControlToValidate="TextBox16" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
      
        <br /><br />
        <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="285px" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter the Required field" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
      
        <br /><br />
        <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="285px" Placeholder="Confirm your password" TextMode="Password"></asp:TextBox>   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter the Same Password Value" ControlToCompare="TextBox5" ControlToValidate="TextBox4" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>   
      
    
        <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />

        
        <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>

      </form>
        <a href="#" class="dnthave">Forgot Your Account Detials</a>
  </div> 
       <div class="footer">
      <span>Made with <i class="fa fa-heart pulse"></i> <a href="https://www.google.de/maps/place/Augsburger+Puppenkiste/@48.360357,10.903245,17z/data=!3m1!4b1!4m2!3m1!1s0x479e98006610a511:0x73ac6b9f80c4048f"><a href="https://codepen.io/lordgamer2354">By Republic of Government</a></span>
    </div>
</div>
             



       
    </form>

   

</body>
  




</html>


















