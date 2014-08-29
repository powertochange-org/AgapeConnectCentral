<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="ddr" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="ddr" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine"
  Assembly="DotNetNuke.Web.DDRMenu" %>

<dnn:DnnJsInclude ID="bootstrapJS" runat="server" FilePath="bootstrap/js/bootstrap.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="customJS" runat="server" FilePath="js/scripts.js" PathNameAlias="SkinPath" />

<link rel='stylesheet' id='open-sans-css'  href='//fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C600italic%2C300%2C400%2C600&#038;subset=latin%2Clatin-ext&#038;ver=3.8.1' type='text/css' media='all' />

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
<script type='text/javascript'>
    function popUpShow() {
        $("#popUp").show();
        var e = document.getElementById('popUpButton');
        e.style.background = '#f4f4f4';
        e.style.border = '1px solid #d6d7d4';
        e.style.borderBottom = '1px solid #f4f4f4';
    }
    function popUpHide() {
        $("#popUp").hide();
        var e = document.getElementById('popUpButton');
        e.style.background = '#f58220';
        e.style.border = '1px solid #eb8528';
    }
    /* todo  jQuery(document).ready(function(){
      });*/
</script>

	<header>
		<div class='top'>
			<div id="loginContainer">
				<dnn:USER runat="server" id="dnnUSER" />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:LOGIN runat="server" id="dnnLOGIN" />&nbsp;&nbsp;|&nbsp;&nbsp;<a id="help-link" href="#">Help</a>
			</div>
			<div class='clear'></div>
		</div>
		<div class='middle'>
			<div class='logo'>
                <dnn:LOGO runat="server" id="dnnLOGO" />
                <div id="staff-app-container">
                     <a id="popUpButton" class="button related" onmouseout="popUpHide();" onmouseover="popUpShow();" 
                    style="border: 1px solid rgb(235, 133, 40); background: rgb(245, 130, 32);">Staff Apps</a>
                    <div id="popUp" onmouseout="popUpHide();" onmouseover="popUpShow();" >
                        <center>
                            <ul class="popupMenu">
                                <table>
                                    <tbody>
                                        <tr><td style="border:0;"> <a href="https://absences.powertochange.org"> <img src="https://staff.powertochange.org/wp-content/images/Absence-Tracker-Icon.png" alt="Absence Tracker"></a></td>
                                            <td style="border:0;"> <a href="/reports/"> <img src="https://staff.powertochange.org/wp-content/images/Reports-Icon.png" alt="Reports"></a></td>
                                            <td style="border:0;"> <a href="/wp-admin/admin.php?page=s2"> <img src="https://staff.powertochange.org/wp-content/images/My-Settings-Icon.png" alt="My Settings"></a></td>
                                        </tr>
                                        <tr><td style="border:0;"> <a href="/staff-directory/"> <img src="https://staff.powertochange.org/wp-content/images/Staff-Directory-Icon.png" alt="Staff Directory"></a></td>
                                            <td style="border:0;"> <a href="mailto:helpdesk@powertochange.org"> <img src="https://staff.powertochange.org/wp-content/images/HelpDesk-Icon.png" alt="Help Desk"></a></td>
                                            <td style="border:0;"> <a href="https://wiki.powertochange.org/help"> <img src="https://staff.powertochange.org/wp-content/images/Self-Help-Wiki-Icon.png" alt="Self-Help Wiki"></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </ul>
                        </center>
                    </div>
                </div>
			</div>
           
		</div>
		<div class='menu_bg'>
            <div class="navbar">
                <div class="navbar-inner">
                    <%--<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">Menu</a>--%>
                    <%--removed Bootstrap classes 'nav-collapse and collapse' from tag ID navddt so that the menu wouldn't collapse on smaller screen resoultions--%>
                    <div ID="navddt" class="menu-dropdown pull-right">
                        <ddr:MENU ID="bootstrapNav" MenuStyle="bootstrapNav" runat="server"></ddr:MENU>
                    </div><!-- END menu-dropdown -->
                </div><!-- END navbar-inner -->
			</div><!-- END navbar -->
		</div>
	</header>
	<div id="ContentPane" runat="server"  ></div>
	<footer>
		<div class='bottom'>
			<div class='copy'><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" /><a class='privacy' href='#'><dnn:PRIVACY runat="server" id="dnnPRIVACY" /></a></div>
		</div>
	</footer>

