<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CatalogoTipoArticulos.aspx.cs" Inherits="ExamenfinalJosueChavarria.CatalogoTipoArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Gridview.css" rel="stylesheet" />
    <link href="CSS/buttons.css" rel="stylesheet" />
    <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="OnPageIndexChanging"
                                        runat="server"  AllowPaging="True" PageSize="5" PagerSettings-Position="TopAndBottom"
                                        CssClass="mGrid"
                                        PagerStyle-CssClass="pgr"
                                        AlternatingRowStyle-CssClass="alt">
    </asp:GridView>
    <div>
        <br />
        <h3  style="color: white;"/>Codigo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <h3  style="color: white;"/>Descripcion:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tdescripcion" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button class="button" ID="bagregar" runat="server" OnClick="bagregar_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="button" ID="bborrar" runat="server" OnClick="bborrar_Click" Text="Borrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="button" ID="bactualizar" runat="server" OnClick="bactualizar_Click" Text="Actualizar" />
    </div>
    <div>
        <h3  style="color: white;">
        <br />
        <br />
        Instrucciones para Ingresar</h3>
        <h4  style="color: white;">Es Necesario rellenar los espacios: Descripcion</h4>

        <h3  style="color: white;">Instrucciones para Borrar</h3>
        <h4  style="color: white;">Es Necesario rellenar los espacios: Codigo</h4>

        <h3  style="color: white;">Instrucciones para Actualizar</h3>
        <h4  style="color: white;">Es Necesario rellenar los espacios: Descripcion y Codigo</h4>

    </div>
        <br />
        <br />

    <div><p align="right"><asp:Button align="right" class="button" ID="bvolver" runat="server" OnClick="bvolver_Click" Text="Volver" /></p></div>
</asp:Content>
