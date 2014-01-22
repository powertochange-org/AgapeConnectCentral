<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>

	<header>
		<div class='top'>
			<div id="loginContainer">
				<dnn:USER runat="server" id="dnnUSER" />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:LOGIN runat="server" id="dnnLOGIN" />&nbsp;&nbsp;|&nbsp;&nbsp;Search:
			</div>
			<div class='clear'></div>
		</div>
		<div class='middle'>
			<div class='logo'><dnn:LOGO runat="server" id="dnnLOGO" /></div>
			</div>
		</div>
		<div class='menu_bg'>
			<div class='nav'><dnn:NAV runat="server" id="dnnNAV" /></div>
		</div>
	</header>
	<div id="ContentPane" runat="server"  ></div>
	<footer>
		<div class='bottom'>
			<div class='copy'><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" /></span><a class='privacy' href=''><dnn:PRIVACY runat="server" id="dnnPRIVACY" /></a></div>
		</div>
	</footer>

