<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstPage.aspx.cs" Inherits="Practical6.FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Programme:"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="rbgProgramme" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>RIS2</asp:ListItem>
                            <asp:ListItem>RIT2</asp:ListItem>
                            <asp:ListItem>RSD2</asp:ListItem>
                            <asp:ListItem>RSF2</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Language:"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLanguage" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>English</asp:ListItem>
                            <asp:ListItem>Malay</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:LinkButton ID="lbtGo" runat="server" OnClick="lbtGo_Click">Go</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
