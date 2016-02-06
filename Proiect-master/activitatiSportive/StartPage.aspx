<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="activitatiSportive.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 605px;
        }
        .auto-style1 {
            position: absolute;
            top: 136px;
            left: 71px;
            z-index: 1;
            width: 409px;
        }
        .auto-style2 {
            margin-top: 7px;
        }
        .auto-style3 {
            position: absolute;
            top: 172px;
            left: 72px;
            z-index: 1;
            width: 226px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <p style="margin-left: 60px; height: 25px; width: 139px; margin-top: 26px;">
            Pagina Competitii 
        </p>
        <p style="margin-left: 60px; height: 25px; width: 600px;">
            Pentru a te inscrie la o competitie apasa pe numele competitiei.
        </p>
        <div style="margin-left: 60px; height: 25px; width: 600px;">
        <asp:Label ID="MesajLogare" runat="server" CssClass="auto-style1" ForeColor="Red" Text="Trebuie mai intai sa te loghezi pentru a te putea inscrie la competitie" Visible="False"></asp:Label>
        <asp:Label ID="InscriereCompetitie" runat="server" CssClass="auto-style3" ForeColor="#33CC33" Text="Te ai inscris la competitie" Visible="False"></asp:Label>
        </div>
        
        <div style="display:inline-block; margin-right:10px; width: 393px; margin-top: 0px;">
            <asp:GridView ID="GridView1" runat="server" Height="67px" autogeneratecolumns="false" style="margin-left: 60px; " Width="16px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCommand="Gridview1_RowCommand" CssClass="auto-style2">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                <Columns>
                    <asp:TemplateField HeaderText="NumeCompetitie" InsertVisible="False">
                        <ItemTemplate>
                            <asp:LinkButton id="numeCompetitie" runat="server" 
                                Text='<%# Eval("NumeCompetitie") %>'
                                CommandName="inscriereCompetitie" 
                                CommandArgument='<%#Bind("NumeCompetitie") %>'>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DataCompetitie" HeaderText="DataCompetitie"/>
                    <asp:BoundField DataField="Locatie" HeaderText="Locatie"/>
                </Columns>
            </asp:GridView>
        </div>
        <div style="display:inline-block">
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CaptionAlign="Bottom" CellPadding="4" Height="41px" style="margin-left: 46px; margin-top: 77px;" Width="283px">
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
        </div>
        
        &nbsp;
        
        <br />
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 10px; top: 441px; position: absolute; height: 136px; width: 782px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 139px; top: 33px; position: absolute; bottom: 115px;" Text="UserName"></asp:Label>
            <asp:TextBox ID="UserName" runat="server" CausesValidation="True" style="z-index: 1; left: 217px; top: 29px; position: absolute" >Enter your email</asp:TextBox>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 140px; top: 73px; position: absolute; height: 19px;" Text="Password"></asp:Label>
            <asp:Label ID="userValidation" runat="server" ForeColor="Red" style="z-index: 1; left: 366px; top: 32px; position: absolute; width: 266px" Text="Adresa de email nu exista in baza de date" Visible="False"></asp:Label>
            <asp:TextBox ID="Password" runat="server" style="z-index: 1; left: 215px; top: 68px; position: absolute; height: 19px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="passwordValidation" runat="server" ForeColor="Red" style="z-index: 1; left: 368px; top: 70px; position: absolute" Text="Parola introdusa este gresita" Visible="False"></asp:Label>
            <asp:Button ID="Button2" runat="server" OnClick="Logare" style="z-index: 1; left: 297px; top: 133px; position: absolute; width: 125px;" Text="Sign in" />
        </asp:Panel>
    </form>
    <script>
        function setUserNameToNothing() {
            var textBoxUserName = document.getElementById("UserName");
            textBoxUserName.value = "";

        }
    </script>
</body>
</html>
