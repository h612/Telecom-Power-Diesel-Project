<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataAfterFilling.aspx.cs" Inherits="WebApplication1.DataAfterFilling" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 65px">
    
        Add Filling Details:</div>
    <p>
        Site ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         <asp:TextBox ID="TextBox4SiteID" runat="server"></asp:TextBox>
    </p>
    <p>
        Card ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;         <asp:TextBox ID="TextBox4CardID" runat="server"></asp:TextBox>
    </p>
    <p>
        Card Serial No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;         <asp:TextBox ID="TextBox4CardSerialNumber" runat="server"></asp:TextBox>
    </p>
    <p>
                Filling Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox4FillingDate" runat="server"></asp:TextBox>
    </p>
    <p>
        Filled Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;         <asp:TextBox ID="TextBox4FilledQty" runat="server"></asp:TextBox>
    </p>
    <p>
        Lat Available Qty:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4LastAvailableQty" runat="server"></asp:TextBox>
    </p>
    <p>
        Last Filled Qty:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4LastFilledQty" runat="server"></asp:TextBox>
    </p>
    <p>
        Last Meter Reading:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <asp:TextBox ID="TextBox4LastMeterReading" runat="server"></asp:TextBox>
        <br />
        <br />
        Current Meter Reading:&nbsp;         <asp:TextBox ID="TextBox4CurrentMeterReading" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button4FillingDetails" runat="server" 
            Text="Submit Filling Details" Width="145px" 
            onclick="Button4FillingDetails_Click" />
    </p>
    </form>
</body>
</html>
