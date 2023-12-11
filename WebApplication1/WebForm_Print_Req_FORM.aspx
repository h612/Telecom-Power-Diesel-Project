<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_Print_Req_FORM.aspx.cs" Inherits="WebApplication1.WebForm_Print_Req_FORM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            width: 208px;
        }
        .style3
        {
            width: 169px;
            font-weight: bold;
        }
        #TextArea4Remarks
        {
            height: 51px;
            width: 526px;
        }
        .style4
        {
            text-decoration: underline;
        }
        #form1
        {
            width: 619px;
        }
        .style5
        {
            width: 169px;
            height: 62px;
        }
        .style6
        {
            width: 208px;
            height: 62px;
        }
        .style7
        {
            height: 53px;
            width: 632px;
        }
        .style8
        {
            width: 169px;
            height: 61px;
        }
        .style9
        {
            width: 208px;
            height: 61px;
        }
        .style10
        {
            height: 61px;
        }
        .style11
        {
            width: 169px;
            height: 66px;
        }
        .style12
        {
            width: 208px;
            height: 66px;
        }
        .style13
        {
            height: 66px;
        }
        .style15
        {
            height: 24px;
        }
        .style16
        {
            height: 31px;
        }
        .style17
        {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="left"  style="font-size:15px">
        <b>&nbsp;<asp:image src="world-call.jpg" ID="Image1"   runat="server" Height="53px" 
        Width="65px" AlternateText="WorldCall Image" ImageAlign="Middle"/>
        Gensets Diesel Requisition\ Acknowledgement Form&nbsp;&nbsp;&nbsp; </b>&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        (Operation Support Dept.)</div>
    <table style="width: 103%; height: 140px;" id="table4SiteID" frame="hsides">
        <tr>
            <td class="style17">
&nbsp;<b>Site ID:&nbsp;&nbsp;&nbsp;&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="TextBox4SiteID" runat="server" ontextchanged="TextBox1_TextChanged" 
                Width="132px" ReadOnly="True"></asp:TextBox>
                &nbsp;&nbsp;</td>
            <td class="style17">
                <b>Genset Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                    ID="TextBox4GensetTYpe" runat="server" 
                    Width="124px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <b>Site Name:&nbsp;&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4SiteName" runat="server" Width="131px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style15">
                <b>Contractor Name:&nbsp;&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4ContractorName" runat="server" Width="123px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <b>Requested Date:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4requested_date" runat="server" Width="134px"></asp:TextBox>
                &nbsp;&nbsp;</td>
            <td class="style16">
                <b>Available Diesel QTY:</b>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4AvailableDieselQTY" runat="server" Width="125px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table>
    
        <br />
        <table bgcolor="White" style="width: 97%; height: 257px;" id="table4DieselData" 
        align="left" frame="box" title="Diesel Data Info">
            <tr>
                <td class="style3">
                    Old History:</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
            <asp:Label ID="Label4FillingDate" runat="server" Text="FillingDate"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4OldFillingDate" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
            <asp:Label ID="label4filledQuantity" runat="server" Text="Filled Quantity"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4FilledQuantity" runat="server"></asp:TextBox>
                </td>
                <td class="style13">
            <asp:Label ID="Label4gensetReading" runat="server" Text="Genset Hr reading"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4OLDGensetReading" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    New Filling Status</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
            <asp:Label ID="Label1" runat="server" Text="Filling Date"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4NEWfillingDate" runat="server"></asp:TextBox>
                </td>
                <td class="style9">
            <asp:Label ID="Label2" runat="server" Text="Filling Quantity"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4FillingQuantity" runat="server"></asp:TextBox>
                </td>
                <td class="style10">
            <asp:Label ID="Label3" runat="server" Text="Genset Hr Reading"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4NEWGensetReading" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Diesel Consumption</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
            <asp:Label ID="Label4" runat="server" Text="Old Reading"></asp:Label>
                    <br />
            <asp:TextBox ID="IESEL_READING" runat="server" 
                        ontextchanged="IESEL_READING_TextChanged"></asp:TextBox>
                </td>
                <td class="style6">
            <asp:Label ID="Label5" runat="server" Text="Current Reading"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4NEW_DIESELReading" runat="server"></asp:TextBox>
                </td>
                <td class="style7">
            <asp:Label ID="Label6" runat="server" Text="Consumed Hr (Current-Old)"></asp:Label>
                    <br />
            <asp:TextBox ID="TextBox4ConsumedDiesel" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Remarks:"></asp:Label>
        <br />
        <br />
        <textarea id="TextArea4Remarks" name="S1"></textarea><br />
        <b><span class="style4">
    <br />
    <asp:Label ID="Label9" runat="server" Text="Filled By (Contractor):"></asp:Label>
    <br />
    </span><br />
 
    Name:&nbsp;&nbsp;&nbsp; <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature:<span 
        class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <br />
    <br />
    <span class="style4">Verified By (OSE):</span><br />
    <br />
    Name:&nbsp;&nbsp;&nbsp; <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature:<span 
        class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <br />
    <br />
    <span class="style4">Security Guard / Incharge:</span><br />
    <br />
    Name:&nbsp;&nbsp;&nbsp;&nbsp; <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature:<span 
        class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    </span>
    </b>
        <br />
    <hr />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#0066FF" 
            Text="Click to Print Request Form:"></asp:Label>
    <asp:Button ID="Button4PrintRequest" runat="server" BorderColor="#CC0099" 
            ForeColor="#0066FF" Height="28px" Text="Print!" Width="70px" 
            onclick="Button4PrintRequest_Click" />
    </form>
</body>
</html>
