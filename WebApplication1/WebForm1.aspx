<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCFFFF">
    <div>
    
    </div>
    Submit Request for Diesel&nbsp;
    <asp:Button ID="Button4Request" runat="server" onclick="Button4Request_Click" 
        Text="Request" Width="93px" />
    <p>
        View Diesel Report&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4ViewReport" runat="server" Text="View Report" 
            Width="95px" />
    </p>
    Permit\Grant Diesel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4request_Permit" runat="server" 
        onclick="Button4request_Permit_Click" Text="Permit Req" />
    </form>
</body>
</html>
