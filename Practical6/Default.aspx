<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practical6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Some String : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SubmitString" runat="server" OnClick="SubmitString_Click" Text="Submit String" />
            <asp:Button ID="JustSubmit" runat="server" Text="Just Submit" />
            <br />
            <br />
            Value of the string: held in the MEMBER VARIABLE:
            <asp:Label ID="lblShow" runat="server" Text="[LabelShowString]"></asp:Label>
            <br />
            <br />
            Value of the string help in the SESSION STATE:
            <asp:Label ID="lblShow2" runat="server" Text="[LabelShowStringAsSessionState]"></asp:Label>
        </div>
    </form>
</body>
</html>
