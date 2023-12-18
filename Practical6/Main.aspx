<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Practical6.Global" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link id="css" href="<%= 
(string)Session["SelectedCss"] %>"
        type="text/css"
        rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblVisit" runat="server" Text="[lblVisit]"></asp:Label>
            <br />
            <asp:Label ID="lblAccess" runat="server" Text="[lblAccess]"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblTheme" runat="server" Text="Choose a theme:"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlTheme" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Standard</asp:ListItem>
                <asp:ListItem>Special</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:Button ID="btnApply" runat="server" OnClick="btnApply_Click" Text="Apply" />
            <br />
            <asp:CheckBox ID="chkRmb" runat="server" Text="Remember preference" OnCheckedChanged="chkRmb_CheckedChanged" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NextPage.aspx">Next Page</asp:HyperLink>
        </div>
    </form>
</body>
</html>
