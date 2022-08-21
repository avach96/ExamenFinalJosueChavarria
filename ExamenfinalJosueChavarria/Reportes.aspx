<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="ExamenfinalJosueChavarria.Reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Gridview.css" rel="stylesheet" />
    <link href="CSS/buttons.css" rel="stylesheet" />
    <div>
        <br />
        <br />
        <h3 style="color: white;">Reporte Costo de Inventario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />
        <br />
        </h3></div>
    <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="OnPageIndexChanging"
                                        runat="server"  AllowPaging="True" PageSize="5" PagerSettings-Position="TopAndBottom"
                                        CssClass="mGrid"
                                        PagerStyle-CssClass="pgr"
                                        AlternatingRowStyle-CssClass="alt">
    </asp:GridView>
    <div>
        <br />
        <br />
        <h3 style="color: white;">Reporte Proyeccion de Ganancias<br />
        <br />
        </h3></div>
    <asp:GridView ID="GridView2" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="OnPageIndexChanging"
                                        runat="server"  AllowPaging="True" PageSize="5" PagerSettings-Position="TopAndBottom"
                                        CssClass="mGrid"
                                        PagerStyle-CssClass="pgr"
                                        AlternatingRowStyle-CssClass="alt"></asp:GridView>
    <div>
        <br />
        <br />
        <h3 style="color: white;">Reporte Articulos con la descripcion del tipo de articulo<br />
        <br />
        </h3></div>
    <asp:GridView ID="GridView3" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="OnPageIndexChanging"
                                        runat="server"  AllowPaging="True" PageSize="5" PagerSettings-Position="TopAndBottom"
                                        CssClass="mGrid"
                                        PagerStyle-CssClass="pgr"
                                        AlternatingRowStyle-CssClass="alt"></asp:GridView>
    <br />
        <br />

    <div><p align="right"><asp:Button align="right" class="button" ID="bvolver" runat="server" OnClick="bvolver_Click" Text="Volver" /></p></div>
</asp:Content>
