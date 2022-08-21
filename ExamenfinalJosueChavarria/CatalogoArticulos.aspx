<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CatalogoArticulos.aspx.cs" Inherits="ExamenfinalJosueChavarria.CatalogoArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Gridview.css" rel="stylesheet" />
    <link href="CSS/buttons.css" rel="stylesheet" />
    <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="OnPageIndexChanging"
                                        runat="server"  AllowPaging="True" PageSize="5" PagerSettings-Position="TopAndBottom"
                                        CssClass="mGrid"
                                        PagerStyle-CssClass="pgr"
                                        AlternatingRowStyle-CssClass="alt"
                                        >
    </asp:GridView>
    <div>
        <br />
        <h3  style="color: white;"/>Codigo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <h3  style="color: white;"/>Descripción:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tdescripcion" runat="server"></asp:TextBox>
        <br />
        <br />
        <h3  style="color: white;"/>Tipo Articulo:&nbsp;&nbsp;
        <asp:TextBox ID="ttiparticulo" runat="server"></asp:TextBox>
        <br />
        <br />
        <h3  style="color: white;"/>Precio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tprecio" runat="server"></asp:TextBox>
        <br />
        <br />
        <h3  style="color: white;"/>Costo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcosto" runat="server"></asp:TextBox>
        <br />
        <br />
        <h3  style="color: white;"/>Cantidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcantidad" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button class="button" ID="bingresar" runat="server" OnClick="bingresar_Click" Text="Ingresar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="button" ID="bborrar" runat="server" OnClick="bborrar_Click" Text="Borrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="button" ID="bactualizar" runat="server" OnClick="bactualizar_Click" Text="Actualizar" />
        &nbsp;&nbsp;</div>
    &nbsp
    &nbsp
        &nbsp
        &nbsp<br />
    <br />
&nbsp;<div>
        <h3 style="color: white;">Instrucciones para Ingresar</h3>
        <h4 style="color: white;">Es Necesario rellenar los espacios: Descripcion, Tipo Articulo, Precio, Costo y Cantidad</h4>

        <h3 style="color: white;">Instrucciones para Borrar</h3>
        <h4 style="color: white;">Es Necesario rellenar los espacios: Codigo</h4>

        <h3 style="color: white;">Instrucciones para Actualizar</h3>
        <h4 style="color: white;">Es Necesario rellenar los espacios: Descripcion, Tipo Articulo, Precio, Costo, Cantidad y Codigo</h4>

    </div>

        <br />
        <br />

    <div><p align="right"><asp:Button align="right" class="button" ID="bvolver" runat="server" OnClick="bvolver_Click" Text="Volver" /></p></div>
</asp:Content>
