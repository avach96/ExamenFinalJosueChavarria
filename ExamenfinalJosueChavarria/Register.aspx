﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ExamenfinalJosueChavarria.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" type="text/css" href="/css/registercss.css" media="screen" />
</head>
<body>
	<form id="form1" runat="server">
 <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Registrarse</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="ced" class="label">USUARIO</label>
					<asp:TextBox ID="tusuario" class="input" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tusuario" ForeColor="#FF0066">Ingrese su usuario</asp:RequiredFieldValidator>
				</div>
				<div class="group">
					<label for="ced" class="label">TIPO DE USUARIO (1-Normal, 2- Admin)</label>
					<asp:TextBox ID="ttipousuario" class="input" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ttipousuario" ForeColor="#FF0066">Ingrese el tipo de usuario</asp:RequiredFieldValidator>
				</div>
			<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<asp:TextBox ID="tclave" class="input" data-type="password" placeholder="Digite contraseña" runat="server"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Repita la contraseña</label>
					<asp:TextBox ID="tclave2" class="input" data-type="password" placeholder="Repita la contraseña" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator" ControlToCompare="tclave" ControlToValidate="tclave2" ForeColor="#FF0066">Las contraseñas son distintas</asp:CompareValidator>
				</div>
				<div class="group">
					<asp:Button ID="bregistrarse" class="button" value="Register" runat="server" Text="Registrarse" OnClick="bregistrarse_Click"  />
				</div>
				<div class="hr"></div>
	
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Usuario</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<asp:TextBox ID="tclavereg" class="input" data-type="password" placeholder="Digite contraseña" runat="server"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Repita la contraseña</label>
					<asp:TextBox ID="tconfirmar" class="input" data-type="password" placeholder="Repita la contraseña" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="tclavereg" ControlToValidate="tconfirmar" ForeColor="#FF0066">Las contraseñas son distintas</asp:CompareValidator>
				</div>
				<div class="group">
					<label for="pass" class="label">Correo electronico</label>
					<asp:TextBox ID="tcorreo" class="input" placeholder="Digite correo electronico" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="tcorreo" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Digite un correo valido</asp:RegularExpressionValidator>
				</div>
				<div class="group">
					<asp:Button ID="butregistrarse" class="button" value="Sign Up" runat="server" Text="Registrarse" />
				</div>
				<div class="hr">
                    <asp:Label ID="mensaje" runat="server" ForeColor="#FF0066"></asp:Label>
                </div>
			</div>
		</div>
	</div>

</div>
	 </form>
</body>
</html>
