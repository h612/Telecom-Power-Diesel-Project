<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PendingReq.aspx.cs" Inherits="WebApplication1.PendingReq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        myPending List for Diesel Request:<br />
    </p>
    <div>
    
    </div>
    <asp:Button ID="Button4ViewRequests" runat="server" onclick="Button4ViewRequests_Click" 
        Text="View Pending requests" />
    <br />
    <br />
    <asp:GridView ID="GridView4PendingReq" runat="server" 
        OnRowCommand="GridView4PendingReq_RowCommand" Height="136px" Width="441px" 
        CaptionAlign="Top">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="PrintRequest" 
                Text="Print Req">
                <ItemStyle BackColor="#99FFCC" />
            </asp:ButtonField>
            <asp:ButtonField CommandName="AddDataAfterFilling" InsertVisible="False" 
                Text="Add Data After Filling" />
            <asp:TemplateField HeaderText="SelectReq">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            &nbsp;
            <asp:CheckBox ID="CheckBox2" runat="server" />
        </EmptyDataTemplate>
    </asp:GridView>
    &nbsp;<br />
    <br />
    <asp:Button ID="Button4SelectAll" runat="server" 
        onclick="Button4SelectAll_Click" Text="Select All" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
