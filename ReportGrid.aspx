<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportGrid.aspx.cs" Inherits="login.ReportGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" Width="1605px">
                <Columns>
                    <asp:BoundField DataField="nationalid" HeaderText="nationalid" SortExpression="nationalid" />
                    <asp:BoundField DataField="idno" HeaderText="idno" SortExpression="idno" />
                    <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                    <asp:BoundField DataField="causeaddress" HeaderText="causeaddress" SortExpression="causeaddress" />
                    <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" SortExpression="phonenumber" />
                    <asp:BoundField DataField="longtitute" HeaderText="longtitute" SortExpression="longtitute" />
                    <asp:BoundField DataField="latitiute" HeaderText="latitiute" SortExpression="latitiute" />
                    <asp:BoundField DataField="vehiclenum" HeaderText="vehiclenum" SortExpression="vehiclenum" />
                    <asp:BoundField DataField="cause" HeaderText="cause" SortExpression="cause" />
                    <asp:BoundField DataField="registereddate" HeaderText="registereddate" SortExpression="registereddate" />
                    <asp:BoundField DataField="fileup" HeaderText="fileup" SortExpression="fileup" />
                    <asp:BoundField DataField="ContentType" HeaderText="ContentType" SortExpression="ContentType" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>



            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Accident_ReportConnectionString %>" SelectCommand="SELECT [nationalid], [idno], [fullname], [causeaddress], [phonenumber], [longtitute], [latitiute], [vehiclenum], [cause], [registereddate], [fileup], [ContentType] FROM [accidentinfo]"></asp:SqlDataSource>
            <br /><br />

            <asp:ImageButton ID="ImageButton1" runat="server" Height="52px" ImageUrl="~/images/logout.png" OnClick="ImageButton1_Click" style="margin-left: 764px" Width="50px" />
        </div>
    </form>
</body>
</html>
