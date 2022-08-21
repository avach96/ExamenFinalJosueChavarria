<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ExamenfinalJosueChavarria.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/home.css" rel="stylesheet" />
    <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h1 style="color:#FFFFFF";><b>
            Bienvenido :&nbsp;
            <asp:Label ID="lnombre" runat="server"></asp:Label>
        </b></h1>

    <div>
        <asp:Button class="button" ID="barticulos" runat="server" Height="57px" OnClick="barticulos_Click" Text="Catalogo de Articulos" Width="209px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button class="button" ID="btarticulos" runat="server" Height="57px" OnClick="btarticulos_Click" Text="Catalogo de Tipo de Articulos" Width="209px" />
        <br />
        <br />
        <br />
        <asp:Button class="button" ID="btusuarios" runat="server" Height="57px" OnClick="btusuarios_Click" Text="Catalogo de Tipos de Usuarios" Width="209px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:Button class="button" ID="busuarios" runat="server" Height="57px" OnClick="busuarios_Click" Text="Catalogo Usuarios" Width="209px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button class="button" ID="breportes" runat="server" Height="57px" OnClick="breportes_Click" Text="Reportes" Width="209px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />

        </div>


    </asp:Content>
