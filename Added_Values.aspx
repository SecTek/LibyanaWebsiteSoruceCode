<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Added_Values, App_Web_added_values.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(function () {
            $("#accordion").accordion();
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section-no-img">
        <div class="container">
            <div class="row">
                <div class="col col_12_of_12 breadcrumb-outer">
                    <div class="page-title page-title-no-img" runat="server" id="div_Title">
                    </div>
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                        <li id="li_Breadcrumb_Parent" runat="server"></li>
                        <li id="li_Breadcrumb_last" runat="server"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row margin-bot-20" runat="server" id="div_body_row">
            <div class="col col_12_of_12" runat="server" id="div_body_inner">
            </div>
        </div>
        <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="row">
                    <div class="col col_12_of_12">
                        <div class="div-roaming-country">
                            <div class="roaming-country-lbl"><%= Resources.SITE_Resource.AddedValueType%></div>
                            <asp:DropDownList runat="server" ID="ddlAddedValuesType" OnSelectedIndexChanged="ddlAddedValuesType_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div id="accordion">
                            <asp:Repeater ID="rpt" runat="server">
                                <ItemTemplate>
                                    <h3><%# Eval("TITLE") %></h3>
                                    <div>
                                        <p>
                                            <%# Eval("BODY") %>
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
    <div class="div-cphBanner">
        <div class="container ">
            <div class="row">
                <div class="col col_12_of_12">
                    <uc1:Services runat="server" ID="Services" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
    <asp:Literal runat="server" ID="lit_Footer_Banner"></asp:Literal>
</asp:Content>
