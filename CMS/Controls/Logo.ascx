<%@ control language="C#" autoeventwireup="true" inherits="CMS_Controls_Logo, App_Web_logo.ascx.413566a5" %>
<div id="logo">
    <h1><a href="../Admin/DashBoard.aspx" class="LogoLink"><img src="../assets/img/NewCMSLogo.png" alt="" /></a>
        <span><%= ConfigurationManager.AppSettings["CMS_Version_Number"].ToString() %></span>
    </h1>
</div>
<a id="toggle" style="display:none">
    <span class="entypo-menu" ></span>
</a>