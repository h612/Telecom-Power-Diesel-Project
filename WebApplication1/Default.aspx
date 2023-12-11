<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home Page for Telecom Project</title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #C0C0C0">
    <div>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" style="margin-bottom: 45px">
    </asp:Panel>
    <asp:Label ID="loginlable" runat="server" Text="Login Please:"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Text="EmployeeID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox_EmpID_login" runat="server" Width="194px"></asp:TextBox>
    </p>
    <p style="margin-left: 240px">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LogIn" 
            Width="57px" />
    </p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
