<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestDiesel.aspx.cs" Inherits="WebApplication1.RequestDiesel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-color: #CCFFFF; font-weight: bold;">
    <div>
    
    <h2>Request From for Diesel Requirement:</h2></div>
    <p>
        Region:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:DropDownList ID="DropDownList4Region" runat="server" Height="30px" 
            onselectedindexchanged="DropDownList4Region_SelectedIndexChanged" 
            Width="132px" AppendDataBoundItems="True" AutoPostBack="True">
            <asp:ListItem>Select Region</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
    </p>
    Site ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:ListBox 
        ID="ListBox4Site_ID" runat="server" AutoPostBack="True" Height="74px" 
        Width="131px" 
        onselectedindexchanged="ListBox4Site_ID_SelectedIndexChanged"></asp:ListBox>
    &nbsp;
    <p>
        Date of Request:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox4Date_for_Requesting_Diesel" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(dd/mm/yy)&nbsp;
        <asp:Label ID="Label4todaysdate" runat="server" Text="Today"></asp:Label>
    </p>
    <p>
        Last Filled Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         <asp:TextBox ID="TextBox4LastFilledDate" runat="server"></asp:TextBox>
    &nbsp;</p>
    <p>
        Required Quantity:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4RequiredQty" runat="server"></asp:TextBox>
    </p>
    <p>
        Available Qty:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4AvailableQty" runat="server"></asp:TextBox>
    </p>
    Expected Refil Date:&nbsp;    <asp:TextBox ID="TextBox4ExpectedRefilDate" 
        runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <p>
        Payment Mode:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4PaymentMode" runat="server"></asp:TextBox>
    </p>
    <p>
        Contractor Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
        <asp:TextBox ID="TextBox4ContractorName" runat="server"></asp:TextBox>
    </p>
    <p>
        FormUniqueCode:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4UniqueFormCode" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <asp:Button ID="Button4ReqSubmit" runat="server" 
        onclick="Button4ReqSubmit_Click" Text="Submit Request" 
        style="width: 139px" />
    </form>
</body>
</html>
