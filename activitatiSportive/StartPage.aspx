<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="activitatiSportive.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 381px; margin-bottom: 71px">
    
        <p style="margin-left: 320px">
            Studenti Participanti</p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CaptionAlign="Bottom" CellPadding="4" Height="162px" style="margin-left: 96px" Width="613px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 344px; top: 313px; position: absolute" Text="Sign in" />
        <asp:TextBox ID="UserName" runat="server" style="z-index: 1; left: 313px; top: 245px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="Password" runat="server" style="z-index: 1; left: 313px; top: 272px; position: absolute; height: 19px"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 240px; top: 246px; position: absolute" Text="UserName"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 241px; top: 273px; position: absolute" Text="Password"></asp:Label>
        <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" style="margin-left: 100px; margin-top: 16px" Text="Button" Width="63px" />
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
