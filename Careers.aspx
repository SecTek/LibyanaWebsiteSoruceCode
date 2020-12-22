<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Careers, App_Web_careers.aspx.cdcab7d2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(function () {
            $("#accordion").accordion();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section" runat="server" id="div_header_image">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li id="li_Breadcrumb_Parent" runat="server"></li>
                    <li id="li_Breadcrumb_last" runat="server"></li>
                </ul>
                <div class="page-title" runat="server" id="div_Title">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row margin-bot-20" runat="server" id="div_body_row">
            <div class="col col_12_of_12" runat="server" id="div_body_inner">
            </div>
        </div>
        <div class="row">
            <div class="col col_12_of_12">
                <table class="tbl-career" style="border-collapse: separate; border-spacing: 5px;">
                    <asp:Repeater ID="rpt" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td>
                                   <a href="javascript:void(0);" class="title-toggle"> <h3 ><%# Eval("TITLE") %> </h3></a>
                                    <div class="career-body career-body-toggle" style="display:none;">
                                        <p>
                                            <b><%= Resources.SITE_Resource.Publication_Date%></b> <%# Eval("POST_DATE") %><br />
                                            <b><%= Resources.SITE_Resource.Department%></b> <%# Eval("DEPARTMENT") %><br />
                                            <b><%= Resources.SITE_Resource.Reference%></b> <%# Eval("JOB_REFERENCE") %><br />
                                            <b><%= Resources.SITE_Resource.Description%></b><br />
                                            <%# Eval("DESCRIPTION") %>
                                        </p>
                                        <asp:UpdatePanel ID="up" runat="server">
                                            <ContentTemplate>
                                                <asp:Button runat="server" ID="btnApplyForJob" CssClass="btn btn-career" Text="<%$ Resources:SITE_Resource, Apply_for_this_Job%>" OnClick="btnApplyForJob_Click" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                    <asp:HiddenField runat="server" ID="hfID_MAIN" Value='<%#DataBinder.Eval(Container,"DataItem.ID_MAIN") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
                            <a href="ApplyForJob.aspx" class="btn" style="display:none;"><%= Resources.SITE_Resource.Apply_For_a_Job_in_General%></a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

