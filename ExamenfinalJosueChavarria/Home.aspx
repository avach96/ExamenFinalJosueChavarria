<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ExamenfinalJosueChavarria.Home" %>
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
        <asp:Button ID="barticulos" runat="server" Height="57px" OnClick="barticulos_Click" Text="Catalogo de Articulos" Width="209px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button  ID="btarticulos" runat="server" Height="57px" OnClick="btarticulos_Click" Text="Catalogo de Tipo de Articulos" Width="209px" />
        <br />
        <br />
        <br />
        <asp:Button  ID="btusuarios" runat="server" Height="57px" OnClick="btusuarios_Click" Text="Catalogo de Tipos de Usuarios" Width="209px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button ID="busuarios" runat="server" Height="57px" OnClick="busuarios_Click" Text="Catalogo Usuarios" Width="209px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
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
