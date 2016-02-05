<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="activitatiSportive.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 280px">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="White" ForeColor="#99CCFF" style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 286px; width: 841px">
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 35px; top: 32px; position: absolute; right: 668px" Text="Inscrie Competitie" />
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 210px; top: 32px; position: absolute; height: 19px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 535px; top: 30px; position: absolute; height: 20px"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 370px; top: 30px; position: absolute; height: 20px"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 674px; top: 27px; position: absolute" Text="Okay" />
            <asp:Button ID="BackPaginaPrincipala" runat="server" OnClick="BackPaginaPrincipala_Click" style="z-index: 1; left: 24px; top: 160px; position: absolute; width: 161px; height: 21px" Text="Back To Main Menu" />
        </asp:Panel>
    </form>
</body>
</html>
