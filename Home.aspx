<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="login.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
 background-color:white;
        }
        ul {
  list-style-type: none;
  
  padding: 0;
  overflow: hidden;
   white-space: nowrap;
   color:black;
 // border: 1px solid #e7e7e7;
 // background-color: #f3f3f3;
}

li {
  float: right;
  margin-left:50px;
   white-space: nowrap;
   margin-right:100px
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
#id1{
    height:100px;
    width:1520px;
   background-color:#1d243d;

}
      
#Button2{
    color:white;
    background-color:#1d243d;
    font-size:20px;
    margin-top:5px;
    
}

#Button3{
    color:white;
    background-color:#1d243d;
    font-size:20px;
      margin-top:5px;
    
}
#Button4{
    color:white;
    background-color:#1d243d;
    font-size:20px;
      margin-top:5px;
   
}
  #main1{
                 width:200px;
            border-color:gray;
            height:200px;
           
            margin-left:1280px;
            margin-top:-200px;
            

           }
             
           #main2{
                 width:200px;
            border-color:gray;
            height:200px;
            
              margin-top:-200px;
              margin-left:100px;
           
            


           }
        #main3 {
            width: 200px;
            border-color: gray;
            height: 200px;
            margin-left: 700px;
        }
            #Label2{
                font-size:32px;
               color:black;
                 background-color:#1d243d;

                   }


            #Label1
            {
                font-size:32px;
               color:black;
                 background-color:#1d243d;
            }
            .img{
                 background-color:#1d243d;
            }
             #Label3
            {
                font-size:32px;
               color:black;
                 background-color:#1d243d;
            }
             #id2{
                  font-size:22px;
               color:white;
                 background-color:#1d243d;
                 margin-top:-120px;
                 margin-left:120px;
             }









    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div id="id1">
             

            <ul>
                <div id="id21">
          <img src="images/Untitled design.png"  alt="HTML5 Icon" width="120" height="180" style="margin-left: 0px">
                     </div>
                <div id="id2">
			   <asp:Label ID="Label4" runat="server" Text="Student Accomadation"></asp:Label>
                    <li><asp:Button ID="Button2" runat="server" Text="MAP"  BorderStyle="None" ForeColor="White" /></li>
                    <li><asp:Button ID="Button3" runat="server" Text="ABOUT"/></li>
                    <li><asp:Button ID="Button4" runat="server" Text="REPORT" OnClick="Button4_Click"/></li>
                   </div>
			 
               

                 
  
</ul>
                </div>

              <div id="main3">
                
              <img src="images/icons8-car.gif"" width="200" height="200" style="margin-left:0px; margin-top:148px" />
              <br /><br />
                <asp:Label ID="Label2" runat="server" Text="250+ RECORDS FOR ACCIDENTS" BackColor="White" BorderStyle="None"></asp:Label>
               
</div>
         <div id="main2">
             <img src="images/icons8-teamwork.gif"  width="200" height="200" style="margin-left:4px; margin-top:128px"/>
             <br /><br />
             <asp:Label ID="Label1" runat="server" Text="Best Ineraction with Government" BackColor="White" BorderStyle="None"></asp:Label>
               
</div>
        <div id="main1">

            <img src="images/search.gif"   width="200" height="200" style="margin-left:0px; margin-top:91px" />
            <br /><br />
               <asp:Label ID="Label3" runat="server" Text="500+ Search Results" BackColor="White" BorderStyle="None"></asp:Label>


        </div>

            <asp:TextBox ID="TextBox1" runat="server"  Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>






        </div>
    </form>
</body>
</html>
