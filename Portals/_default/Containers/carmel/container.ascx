<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKACTIONS" Src="~/Admin/Containers/LinkActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRINTMODULE" Src="~/Admin/Containers/PrintModule.ascx" %>
<div class='c_main'">
<div class='c_right'><dnn:ACTIONS runat="server" id="dnnACTIONS" /><dnn:ICON runat="server" id="dnnICON" /></div>
<h1><dnn:TITLE runat="server" id="dnnTITLE" /></h1>
<div runat="server" id="ContentPane"></div>
</div>
