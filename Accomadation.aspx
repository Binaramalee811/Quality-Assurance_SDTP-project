<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accomadation.aspx.cs" Inherits="login.accident" %>

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
  width: 1200px;
  height: 1020px;
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
  width: 180px;
        height: 49px;
        font-size: 16px;
        position: absolute;
        top: 87%;
  left: 16%;
        transition: 0.3s;
        cursor: pointer;
  margin-left:0px;
        right: 1348px;
    }

#Button1:hover {
  background: #5d33e6;
}

#Button2{
    border-style: none;
        border-color: inherit;
        border-width: 0;
        background: #7f5feb;
        color: #dfdeee;
        border-radius: 100px;
  width: 175px;
        height: 49px;
        font-size: 16px;
        position: absolute;
        top: 87%;
  left: 22%;
        transition: 0.3s;
        cursor: pointer;
  margin-left:130px;
}

#Button2:hover {
  background: #5d33e6;
}


#Button5{
    border-style: none;
        border-color: inherit;
        border-width: 0;
        background: #7f5feb;
        color: #dfdeee;
        border-radius: 100px;
  width: 129px;
        height: 48px;
        font-size: 16px;
        position: absolute;
        top: 97%;
  left: 36%;
        transition: 0.3s;
        cursor: pointer;
  margin-left:2px;
}

#Button5:hover {
  background: #5d33e6;
}










#Button3{
    border-style: none;
        border-color: inherit;
        border-width: 0;
        background: #7f5feb;
        color: #dfdeee;
        border-radius: 100px;
  width: 171px;
        height: 49px;
        font-size: 16px;
        position: absolute;
        top: 87%;
  left: 22%;
        transition: 0.3s;
        cursor: pointer;
  margin-left:329px;
}

#Button3:hover {
  background: #5d33e6;
}




#Button4{
    border-style: none;
        border-color: inherit;
        border-width: 0;
        background: #7f5feb;
        color: #dfdeee;
        border-radius: 100px;
  width: 171px;
        height: 49px;
        font-size: 16px;
        position: absolute;
        top: 87%;
  left: 23%;
        transition: 0.3s;
        cursor: pointer;
  margin-left:520px;
}

#Button4:hover {
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
    left: 26%;
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
    margin-left:163px;
}
#TextBox2{
    margin-left:22px;
}
#DropDownList1{
     margin-left:22px;
}
#TextBox4{
     margin-left:22px;

}
#TextBox3{
     margin-left:22px;

}
#TextBox13{
    
     margin-left:22px;
}
#TextBox14{
    
     margin-left:22px;
}
#TextBox15{
    
     margin-left:22px;
}
#TextBox16{
    
     margin-left:22px;
}
#TextBox5{
     margin-left:22px;
}
#TextBox6{
     margin-left:25px;
}

#TextBox7{
     margin-left:22px;

}
#TextBox8{
     margin-left:22px;

}
#TextBox9{
     margin-left:22px;

}
#DropDownList1{

}
h4{
    color:white;

}
 h5{
    color:white;
}
 #id2
 {

 width:500px;
 height:500px;






 }
 #FileUpload1{
    margin-left:138px;
}
 #ImageButton1{
     margin-left:22px;
        margin-top: 17px;
    }
 
 





























































































































</style>
    

</head>
<body>
    <div id>
    <form id="form1" runat="server"><body id="particles-js"></body>
<div class="animated bounceInDown">
  <div class="container">
    <span class="error animated tada" id="msg"></span>
      <asp:TextBox ID="TextBox17" runat="server" Height="16px" style="margin-left: 513px" Width="186px" Visible="False"></asp:TextBox>  
    <form name="form1" class="box" onsubmit="return checkStuff()">
        
      <h4>Home Accomadation For Students<span></span></h4>
      <h5>LandLoard Page</h5>
        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="285px" Placeholder="Enter your NationalID"> </asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/images/lattice-pattern.png" OnClick="ImageButton1_Click" Width="62px" /><asp:ImageButton ID="ImageButton2" runat="server" Height="52px" ImageUrl="~/images/refresh.png" OnClick="ImageButton2_Click" Width="55px" style="margin-top: 0px" />
        
        
        <br /><br />
   
       	<asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="285px" placeholder="Select your user type">
                    <asp:ListItem>Shared Apartments</asp:ListItem>
                    <asp:ListItem>Homestays</asp:ListItem>
                    <asp:ListItem>Private Rented</asp:ListItem>
                    <asp:ListItem>Student Co-operatives</asp:ListItem>
                    
        </asp:DropDownList>


          
        <br /><br />
         <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="285px" placeholder="Enter your Phone Number"></asp:TextBox>
        <br /><br />
 
             <asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="285px" placeholder="Enter your House Address"></asp:TextBox>
          
        <br /><br />
           <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="285px" placeholder="Latitiute"></asp:TextBox>
        <br /><br />
          <asp:TextBox ID="TextBox5" runat="server" Height="32px" Width="285px" placeholder="Longtitute"></asp:TextBox>
        
        <br /><br />
        <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="285px" placeholder="Fee"></asp:TextBox>
        
        <br /><br />
          <asp:TextBox ID="TextBox7" runat="server" Height="32px" Width="285px" placeholder="Duration"></asp:TextBox>
        <br /><br />
        
         <asp:TextBox ID="TextBox8" runat="server" Height="50px" Width="285px" placeholder="Description"></asp:TextBox>
        <br /><br />
     
        <br /><br />
         
        
        <asp:TextBox ID="TextBox9" runat="server" Height="32px" Width="285px" placeholder="Registered Date"></asp:TextBox> 
        <br /><br />
        <asp:FileUpload ID="FileUpload1" runat="server"  Height="47px" Width="402px"/>
       
        <br /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" /><asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" /><asp:Button ID="Button4" runat="server" Text="Retrive" OnClick="Button4_Click" /> 
        <br /><br />
        
   
        
       

      </form>
        
  </div> 
         






   


    </div>


        
       















</div>
       


   
           </form>


</body>
  




</html>



