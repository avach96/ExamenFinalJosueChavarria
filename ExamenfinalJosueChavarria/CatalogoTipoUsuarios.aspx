<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CatalogoTipoUsuarios.aspx.cs" Inherits="ExamenfinalJosueChavarria.CatalogoTipoUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/Gridview.css" rel="stylesheet" />
    <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" OnPageIndexChanging="OnPageIndexChanging"
                                        runat="server"  AllowPaging="True" PageSize="5" PagerSettings-Position="TopAndBottom"
                                        CssClass="mGrid"
                                        PagerStyle-CssClass="pgr"
                                        AlternatingRowStyle-CssClass="alt">
    </asp:GridView>
     <div>
        <br />
        Codigo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="bvolver" runat="server" OnClick="bvolver_Click" Text="Volver" />
        <br />
        <br />
        Descripcion:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tdescripcion" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="bagregar" runat="server" OnClick="bagregar_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bborrar" runat="server" OnClick="bborrar_Click" Text="Borrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bactualizar" runat="server" OnClick="bactualizar_Click" Text="Actualizar" />
    </div>
    <div>
        <b>
        <br />
        <br />
        Instrucciones para Ingresar</b>
        <p>Es Necesario rellenar los espacios: Descripcion</p>

        <b>Instrucciones para Borrar</b>
        <p>Es Necesario rellenar los espacios: Codigo</p>

        <b>Instrucciones para Actualizar</b>
        <p>Es Necesario rellenar los espacios: Descripcion y Codigo</p>

    </div>
</asp:Content>
