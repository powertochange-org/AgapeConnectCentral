<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>

<script type="text/javascript">
      (function ($, Sys) {
          function setUpMyTabs() {
              if(!$('.acMenu').length)$('#ControlNav').prepend('<li class="controlBar_ArrowMenu acMenu"><a href="javascript:void(0)">AgapeConnect</a><div class="subNav" style="display: none;"><dl><dd><ul><li><a href="/admin/agapeConnect/staff" class="ControlBar_PopupLink">Staff</a></li><li><a href="/admin/agapeConnect/departments" class="ControlBar_PopupLink">Departments</a></li><li><a href="/admin/agapeConnect/templates" class="ControlBar_PopupLink">Templates</a></li><li><a href="/admin/agapeConnect/settings" class="ControlBar_PopupLink">Settings</a></li><li><a href="/admin/agapeConnect/icons" class="ControlBar_PopupLink">Icons</a></li></ul></dd></dl></div><!--close subNav--></li>');
              $('.acMenu').hover(function () {
                  //$(this).children('.subNav').show();
                  $(this).children('.subNav').slideDown(100);},
                  function () {
                      $(this).children('.subNav').slideUp(100);
                  });
              $('.acMenu').click(function () {
                  $(this).children('.subNav').slideDown(100);
              });

          }

          $(document).ready(function () {
              setUpMyTabs();
              Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function () {
                  setUpMyTabs();
              });
          });



      }(jQuery, window.Sys));

</script>

	<header>
		<div class='top'>
			<div id="loginContainer">
				<dnn:USER runat="server" id="dnnUSER" />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:LOGIN runat="server" id="dnnLOGIN" />&nbsp;&nbsp;|&nbsp;&nbsp;
				<dnn:SEARCH runat="server" id="dnnSEARCH" CssClass="ServerSkinWidget" UseDropDownList="False" ShowWeb="False" ShowSite="False" />
			</div>
			<div class='clear'></div>
		</div>
		<div class='middle'>
			<div class='logo'><dnn:LOGO runat="server" id="dnnLOGO" /></div>
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

