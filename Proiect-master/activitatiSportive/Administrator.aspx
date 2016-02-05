<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="activitatiSportive.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Fundal" runat="server" BackColor="#0099FF" Height="291px">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="InsertUtz" runat="server" Height="31px" OnClick="InsUtz" style="margin-left: 8px" Text="Insert Utilizator" Width="184px" />
            &nbsp;&nbsp;
            <asp:TextBox ID="Nume" runat="server" style="z-index: 1; left: 221px; top: 85px; position: absolute; width: 122px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="Prenume" runat="server" style="z-index: 1; left: 372px; top: 85px; position: absolute; width: 127px; margin-bottom: 30px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="Statut" runat="server" style="z-index: 1; left: 527px; top: 86px; position: absolute; width: 120px" Visible="False"></asp:TextBox>
            <asp:Button ID="OkayUtilizator" runat="server" style="z-index: 1; left: 1017px; top: 82px; position: absolute; width: 69px" Text="Okay" OnClick="OkayUtilizator_Click" Visible="False" />
            <br />
            <asp:TextBox ID="AdrEmail" runat="server" style="z-index: 1; left: 678px; top: 88px; position: absolute; width: 112px; height: 20px;" Visible="False"></asp:TextBox>
            <asp:TextBox ID="NumeCompetitie" runat="server" style="z-index: 1; left: 233px; top: 126px; position: absolute; width: 114px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="IdCompetitie" runat="server" style="z-index: 1; left: 824px; top: 131px; position: absolute; width: 125px" Visible="False"></asp:TextBox>
            <br />
            &nbsp;<asp:Button ID="InsUtl" runat="server" style="z-index: 1; left: 16px; top: 123px; position: absolute; width: 184px; " Text="Inserare Competitie" Height="30px" OnClick="Button3_Click" Width="184px" />
            &nbsp;
            <asp:TextBox ID="Passwd" runat="server" style="z-index: 1; left: 824px; top: 89px; position: absolute; width: 120px; height: 20px; bottom: 438px;" Visible="False"></asp:TextBox>
            <asp:TextBox ID="DataCompetitie" runat="server" style="z-index: 1; left: 372px; top: 124px; position: absolute; width: 134px" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 17px; top: 170px; position: absolute; width: 184px" Text="Accidentari" Height="30px" />
            <asp:Button ID="OkayCompetitie" runat="server" style="z-index: 1; left: 1018px; top: 130px; position: absolute; width: 59px;" Text="Okay" Visible="False" OnClick="OkayCompetitie_Click" />
            <br />
            <asp:Button ID="Button5" runat="server" style="z-index: 1; left: 17px; top: 261px; position: absolute; width: 184px" Text="BackToMainMenu" Height="30px" />
            <asp:Button ID="Button6" runat="server" style="z-index: 1; left: 19px; top: 217px; position: absolute; width: 184px" Text="Remove Utilizator" Height="30px"  />
            <asp:Label ID="Label1" runat="server" ForeColor="#009900" style="z-index: 1; left: 1166px; top: 182px; position: absolute" Text="Utilizatorul introdus nu exista" Visible="False"></asp:Label>
            <asp:TextBox ID="Locatie" runat="server" style="z-index: 1; left: 531px; top: 129px; position: absolute; width: 119px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="StatutCompetitie" runat="server" style="z-index: 1; left: 676px; top: 130px; position: absolute; width: 121px" Visible="False"></asp:TextBox>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
