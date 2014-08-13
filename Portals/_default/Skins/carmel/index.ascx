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

              // handle touch events bug in iOS 6 which causes menu to collapse when scrolling down the menu
              document.getElementById('navddt').addEventListener('touchend', function (e) {
                  var menuContainer = document.getElementById('navddt');
                  console.log('in event: ' + e.target.id + '  menuContainer = ' + menuContainer.id);
                  if (e.target.id === menuContainer.id) {
                      //alert('in touch function ==' + e.currentTarget.id + ' ---test concat');
                      menuContainer.classList.add('in');
                      //console.log('removing class in');
                      alert('added class in to navddt');
                      console.log('before collapse show  id= ' + menuContainer.id);
                      $('.collapse').css("color", "green");
                      console.log('collapse show called');
                  }

              }, false);
              var testTag = $(".dsentitygridsummary");
              //testTag.css("border", "red solid thin");
              console.log('anything happening in scrip.js  ' + testTag.height());
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
				<dnn:USER runat="server" id="dnnUSER" />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:LOGIN runat="server" id="dnnLOGIN" />&nbsp;&nbsp;|&nbsp;&nbsp;
				<dnn:SEARCH runat="server" id="dnnSEARCH" CssClass="ServerSkinWidget" UseDropDownList="False" ShowWeb="False" ShowSite="False" />
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
                                        <tr><td style="border:0;"> <a href="https://absences.powertochange.org"> <img src="https://staff.powertochange.org/wp-content/themes/carmel/img/Absence-Tracker-Icon.png" alt="Absence Tracker"></a></td>
                                            <td style="border:0;"> <a href="/reports/"> <img src="https://staff.powertochange.org/wp-content/themes/carmel/img/Reports-Icon.png" alt="Reports"></a></td>
                                            <td style="border:0;"> <a href="/wp-admin/admin.php?page=s2"> <img src="https://staff.powertochange.org/wp-content/themes/carmel/img/My-Settings-Icon.png" alt="My Settings"></a></td>
                                        </tr>
                                        <tr><td style="border:0;"> <a href="/staff-directory/"> <img src="https://staff.powertochange.org/wp-content/themes/carmel/img/Staff-Directory-Icon.png" alt="Staff Directory"></a></td>
                                            <td style="border:0;"> <a href="mailto:helpdesk@powertochange.org"> <img src="https://staff.powertochange.org/wp-content/themes/carmel/img/HelpDesk-Icon.png" alt="Help Desk"></a></td>
                                            <td style="border:0;"> <a href="https://wiki.powertochange.org/help"> <img src="https://staff.powertochange.org/wp-content/themes/carmel/img/Self-Help-Wiki-Icon.png" alt="Self-Help Wiki"></a></td>
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
            <nav class="navbar">
                <div class="container-fluid">
                    <div class="navbar-inner">
                        <button type="button" class="btn navbar-toggle btn-navbar" data-toggle="collapse" data-target="#navddt">Menu</button>
                        <div ID="navddt" class="navbar-collapse collapse pull-right" >
                            <ddr:MENU ID="bootstrapNav" MenuStyle="bootstrapNav" runat="server"></ddr:MENU>
                        </div><!-- END menu-dropdown -->
                    </div><!-- END navbar-inner -->
                </div><!-- END container-fluid -->
			</nav><!-- END navbar -->
		</div>
	</header>
    <div class="container">
        <div class="row-fluid">
            <div id="ContentPane" class='contentPane' runat="server"  ></div>
        </div><!-- container added for mobile -->
    </div><!-- row-flued added for mobile -->
	<footer>
		<div class='bottom'>
			<div class='copy'><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" /><a class='privacy' href='#'><dnn:PRIVACY runat="server" id="dnnPRIVACY" /></a></div>
		</div>
	</footer>
<%--<script src="Portals/_default/Skins/carmel/js/scripts.js" type="text/javascript"></script>--%>
