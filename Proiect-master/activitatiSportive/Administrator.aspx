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
            <asp:TextBox ID="Nume" runat="server" style="z-index: 1; left: 221px; top: 83px; position: absolute; width: 122px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="Prenume" runat="server" style="z-index: 1; left: 373px; top: 82px; position: absolute; width: 127px; margin-bottom: 30px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="Statut" runat="server" style="z-index: 1; left: 527px; top: 83px; position: absolute; width: 120px" Visible="False"></asp:TextBox>
            <asp:Button ID="OkayUtilizator" runat="server" style="z-index: 1; left: 1017px; top: 82px; position: absolute; width: 57px" Text="Okay" OnClick="OkayUtilizator_Click" Visible="False" />
            <br />
            <asp:TextBox ID="AdrEmail" runat="server" style="z-index: 1; left: 678px; top: 83px; position: absolute; width: 112px; height: 20px;" Visible="False"></asp:TextBox>
            <asp:TextBox ID="NumeCompetitie" runat="server" style="z-index: 1; left: 219px; top: 124px; position: absolute; width: 123px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="Locatie" runat="server" style="z-index: 1; left: 528px; top: 124px; position: absolute; width: 120px" Visible="False"></asp:TextBox>
            <br />
            &nbsp;<asp:Button ID="InsUtl" runat="server" style="z-index: 1; left: 16px; top: 123px; position: absolute; width: 184px; " Text="Inserare Competitie" Height="30px" OnClick="Button3_Click" Width="184px" />
            &nbsp;
            <asp:TextBox ID="Passwd" runat="server" style="z-index: 1; left: 823px; top: 82px; position: absolute; width: 120px; height: 19px; bottom: 450px;" Visible="False"></asp:TextBox>
            <asp:TextBox ID="DataCompetitie" runat="server" style="z-index: 1; left: 372px; top: 124px; position: absolute; width: 126px" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 15px; top: 164px; position: absolute; width: 184px; right: 1028px;" Text="Accidentari" Height="30px" OnClick="Button4_Click" />
            <asp:Button ID="OkayCompetitie" runat="server" style="z-index: 1; left: 1018px; top: 130px; position: absolute; width: 59px;" Text="Okay" Visible="False" OnClick="OkayCompetitie_Click" />
            <asp:TextBox ID="id" runat="server" style="z-index: 1; left: 214px; top: 170px; position: absolute; width: 132px" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="Button5" runat="server" style="z-index: 1; left: 17px; top: 261px; position: absolute; width: 184px" Text="BackToMainMenu" Height="30px" OnClick="Button5_Click" />
            <asp:Button ID="Button6" runat="server" style="z-index: 1; left: 17px; top: 211px; position: absolute; width: 184px" Text="Remove Utilizator" Height="30px" OnClick="Button6_Click"  />
            <asp:Label ID="Label1" runat="server" ForeColor="#009900" style="z-index: 1; left: 1166px; top: 182px; position: absolute" Text="Utilizatorul introdus nu exista" Visible="False"></asp:Label>
            <asp:TextBox ID="StatutCompetitie" runat="server" style="z-index: 1; left: 676px; top: 126px; position: absolute; width: 121px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="idCompetitieA" runat="server" style="z-index: 1; left: 369px; top: 168px; position: absolute; width: 132px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="IdUtilizatorA" runat="server" style="z-index: 1; left: 527px; top: 167px; position: absolute; width: 131px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TipulAccidentului" runat="server" style="z-index: 1; left: 678px; top: 165px; position: absolute; width: 118px" Visible="False"></asp:TextBox>
            <asp:Button ID="OkayAccidentari" runat="server" OnClick="OkayAccidentari_Click" style="z-index: 1; left: 1020px; top: 170px; position: absolute" Text="Okay" Visible="False" />
            <asp:TextBox ID="NumeR" runat="server" style="z-index: 1; left: 213px; top: 212px; position: absolute; width: 130px" Visible="False"></asp:TextBox>
            <asp:Button ID="OkayRemove" runat="server" OnClick="OkayRemove_Click" style="z-index: 1; left: 1017px; top: 210px; position: absolute; width: 58px" Text="Okay" Visible="False" />
            <asp:TextBox ID="PrenumeR" runat="server" style="z-index: 1; left: 368px; top: 211px; position: absolute; width: 133px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="StatutR" runat="server" style="z-index: 1; left: 525px; top: 209px; position: absolute; width: 132px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="AdrEmailR" runat="server" style="z-index: 1; left: 681px; top: 208px; position: absolute; width: 120px" Visible="False"></asp:TextBox>
            <asp:TextBox ID="PasswdR" runat="server" style="z-index: 1; left: 822px; top: 208px; position: absolute; width: 129px" Visible="False"></asp:TextBox>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
