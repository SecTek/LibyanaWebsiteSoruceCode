<%@ control language="C#" autoeventwireup="true" inherits="CMSHeader, App_Web_cmsheader.ascx.413566a5" %>
<%@ Register Src="~/CMS/Controls/DropDownLanguage.ascx" TagPrefix="uc1" TagName="DropDownLanguage" %>

<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="entypo-menu"></span>
            </button>
            <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                <span class="entypo-list-add"></span>
            </button>
            <div id="logo-mobile" class="visible-xs">
                <a href="DashBoard.aspx">
                    <h1><a href="DashBoard.aspx" class="LogoLink">
                        <img src="../assets/img/NewCMSLogo.png" /></a>
                        <span><%= ConfigurationManager.AppSettings["CMS_Version_Number"].ToString() %></span>
                    </h1>
                </a>
            </div>
        </div>
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
           <div id="nt_title_container" runat="server">
                <ul class="date-top">
                    <li class="entypo-calendar" style="margin-right: 5px"></li>
                    <li id="Date"></li>
                </ul>
                <ul id="nt-title" style="height: 18px; overflow: hidden;">
                    <li style="margin-top: 0px;">
                        <uc1:DropDownLanguage runat="server" ID="DropDownLanguage" />
                    </li>
                </ul>
            </div>
            <ul style="margin-right: 0;" runat="server" id="ul_Header_Items">
                <li runat="server" id="li_Header_Items_First">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><%= Resources.CMS_Resource.Hi %>,
                        <asp:Label ID="lblUserName" runat="server"></asp:Label>
                        <b class="caret"></b>
                    </a>
                    <ul style="margin-top: 14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <asp:LinkButton runat="server" ID="lbProfile" CssClass="entypo-user" Text="<%$ Resources:CMS_Resource, MyProfile %>" OnClick="lbProfile_Click"></asp:LinkButton>
                        </li>
                   <%--     <li>
                            <a href="#">
                                <span class="entypo-lifebuoy"></span>&#160;&#160;<%= Resources.CMS_Resource.Help %></a>
                        </li>--%>
                        <li class="divider"></li>
                        <li>
                            <asp:LinkButton runat="server" ID="lbLogout" CssClass="entypo-logout" Text="<%$ Resources:CMS_Resource, Logout %>" OnClick="lbLogout_Click"></asp:LinkButton>
                        </li>
                    </ul>
                </li>
                <li class="hidden-xs" style="display:none">
                    <a class="toggle-left" style="cursor: pointer"><%= Resources.CMS_Resource.ContentShortcut %>
                        <span style="font-size: 20px;" class="entypo-list-add toggle-left-Image" runat="server" id="entypo_list_add"></span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
