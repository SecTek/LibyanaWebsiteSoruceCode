<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="CMS_Admin_No_Access, App_Web_no_access.aspx.1f2a64c3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="error-content">
        <h3><i class="fa fa-warning text-yellow"></i>Oops!</h3>
        <p>
            <%= Resources.CMS_Resource.Have_No_Access%>
        </p>
    </div>
</asp:Content>

