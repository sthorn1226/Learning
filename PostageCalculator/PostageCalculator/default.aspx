<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PostageCalculator._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
        <asp:TextBox ID="widthTextBox" value="0" type="number" AutoPostBack="true" runat="server" OnTextChanged="Calculate"></asp:TextBox>
        <asp:TextBox ID="heightTextBox"  value="0" type="number" AutoPostBack="true" runat="server" OnTextChanged="Calculate"></asp:TextBox>
        <asp:TextBox ID="lengthTextBox"  value="0" type="number" AutoPostBack="true" runat="server" OnTextChanged="Calculate"></asp:TextBox>
        <br />
        
        <asp:RadioButtonList AutoPostBack="true" ID="rdogender" runat="server" OnSelectedIndexChanged="Calculate" RepeatLayout="Flow">
            <asp:ListItem Value="0.15">Ground</asp:ListItem>
            <asp:ListItem Value="0.25">Air</asp:ListItem>
            <asp:ListItem Value="0.45">Next Day</asp:ListItem>
        </asp:RadioButtonList>
        <asp:HiddenField ID="cost" runat="server" Value="0" />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    
        
    </div>
    </form>
</body>
</html>
