<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="login.Mainpage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
               background-color:#1d243d;
        }
    		color: white;
    		font-size: 33px;
			font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
    	}


.classone{
	margin-left:200px;
	margin-top:-70px;

}


#Label1{
    font-size:33px;
    color:whitesmoke;
}


    </style>
</head>





<body>
    <form id="form1" runat="server">

        
        <div id="id2">
          <img src="images/structure.png"  alt="HTML5 Icon" width="100" height="100">
		  <div class="classone">
			   <asp:Label ID="Label1" runat="server" Text="Accident Reporting"></asp:Label>
			  </div>
        </div>
        <br /><br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="nationalid" DataSourceID="SqlDataSource1" Width="1389px">
            <Columns>
                <asp:BoundField DataField="nationalid" HeaderText="nationalid" ReadOnly="True" SortExpression="nationalid" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                <asp:BoundField DataField="idno" HeaderText="idno" SortExpression="idno" />
                <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" SortExpression="phonenumber" />
                <asp:BoundField DataField="causeaddress" HeaderText="causeaddress" SortExpression="causeaddress" />
                <asp:BoundField DataField="longtitute" HeaderText="longtitute" SortExpression="longtitute" />
                <asp:BoundField DataField="latitiute" HeaderText="latitiute" SortExpression="latitiute" />
                <asp:BoundField DataField="vehiclenum" HeaderText="vehiclenum" SortExpression="vehiclenum" />
                <asp:BoundField DataField="cause" HeaderText="cause" SortExpression="cause" />
                <asp:BoundField DataField="registereddate" HeaderText="registereddate" SortExpression="registereddate" />
                <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" />
                <asp:BoundField DataField="fileup" HeaderText="fileup" SortExpression="fileup" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>

	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccidentdbConnectionString %>" SelectCommand="SELECT [nationalid], [fullname], [idno], [phonenumber], [causeaddress], [longtitute], [latitiute], [vehiclenum], [cause], [registereddate], [ContentType], [fileup] FROM [accidentreport]"></asp:SqlDataSource>
        <br /><br />
         <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="300px" placeholder="Enter the user national ID"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/delete.png" Width="50px" style="margin-top: 0px" OnClick="ImageButton1_Click"/>

	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

        



        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Width="1411px">
            <Series>
                <asp:Series Name="Series1">
                    <Points>
                        <asp:DataPoint AxisLabel="Bad whether" YValues="40" />
                         <asp:DataPoint AxisLabel="Distraction" YValues="80" />
                         <asp:DataPoint AxisLabel="Speeding" YValues="100" />
                         <asp:DataPoint AxisLabel="Drunk Driving" YValues="20" />












                    </Points>







                </asp:Series>
       
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                <AxisX title="Cause type"></AxisX>
                 <AxisY title="Numberofcauses"></AxisY>
              </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>







        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AccidentdbConnectionString %>" SelectCommand="SELECT [cause], [idno] FROM [accidentreport]"></asp:SqlDataSource>







        <div>
























        </div>
    </form>
</body>
</html>
