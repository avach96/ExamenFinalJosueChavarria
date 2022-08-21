<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HomeUser.aspx.cs" Inherits="ExamenfinalJosueChavarria.HomeUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p style="color:#FFFFFF";><b>
            Bienvenido :&nbsp;
            <asp:Label ID="lnombre" runat="server"></asp:Label>
        </b></p>
        <div>
        <br />
        <asp:Button ID="breportes" runat="server" Height="57px" OnClick="breportes_Click" Text="Reportes" Width="209px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        </div>
</asp:Content>
