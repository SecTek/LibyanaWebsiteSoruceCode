<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Roaming, App_Web_roaming.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    <div class="container div-body-outer roaming-section">
        <div class="row margin-bot-20" runat="server" id="div_body_row">
            <div class="col col_12_of_12" runat="server" id="div_body_inner">
            </div>
        </div>
        <div class="row">
            <div class="col col_12_of_12">
                <div id="tabs" class="col col_12_of_12 packages">
                    <ul class="ui-tabs-nav  ui-helper-reset ui-helper-clearfix ui-widget-header">
                        <li><a href="#tabs-Roaming_Outside_Libya"><%= Resources.SITE_Resource.Roaming_Outside_Libya%></a></li>
                        <li><a href="#tabs-Roaming_In_Plane"><%= Resources.SITE_Resource.Roaming_In_Plane%></a></li>
                    </ul>
                    <div id='tabs-Roaming_Outside_Libya'>
                        <div class="package-inner">
                            <div class="col col_12_of_12">
                                <div class="package-text">
                                    <asp:UpdatePanel runat="server" ID="up">
                                        <ContentTemplate>
                                            <div class="div-roaming-country">
                                                <div class="roaming-country-lbl"><%= Resources.SITE_Resource.Country%></div>
                                                <asp:DropDownList runat="server" ID="ddlCountry" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                            </div>
                                            <div class="rpt-results" id="div_result" runat="server" visible="false">
                                                <asp:Repeater ID="rptRoaming" runat="server">
                                                    <ItemTemplate>
                                                        <table class="table-roaming-results">
                                                            <thead>
                                                                <tr>
                                                                    <th><%= Resources.SITE_Resource.Operator %></th>
                                                                    <th><%= Resources.SITE_Resource.Destination %></th>
                                                                    <th><%= Resources.SITE_Resource.Price_Min %></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 35%" rowspan="8"><%# Eval("TITLE") %></td>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Libya %></td>
                                                                    <td style="width: 30%"><%# Eval("LIBYA") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><b><%# Eval("COUNTRY_NAME") %></b></td>
                                                                    <td style="width: 30%"><%# Eval("COUNTRY_VALUE") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Arabic_Europe_Country %></td>
                                                                    <td style="width: 30%"><%# Eval("AR_EUR_COUNTRIES") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Rest_of_the_World %></td>
                                                                    <td style="width: 30%"><%# Eval("REST_OF_WORD") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Satellite_call_Thuraya %></td>
                                                                    <td style="width: 30%"><%# Eval("THURAIA") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Other_satellite_call %></td>
                                                                    <td style="width: 30%"><%# Eval("SATELLITES") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Receiving_all_the_calls %></td>
                                                                    <td style="width: 30%"><%# Eval("RECEIVE_CALLING") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.SMS %></td>
                                                                    <td style="width: 30%"><%# Eval("SMS") %></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                            <asp:Label runat="server" ID="lblempty" Visible="false" CssClass="empty-roaming"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id='tabs-Roaming_In_Plane'>
                        <div class="package-inner">
                            <div class="col col_12_of_12">
                                <div class="package-text">
                                    <asp:UpdatePanel runat="server" ID="upInPlane">
                                        <ContentTemplate>
                                            <div class="div-roaming-operator">
                                                <div class="roaming-operator-lbl"><%= Resources.SITE_Resource.Operator%></div>
                                                <asp:DropDownList runat="server" ID="ddlOperator" OnSelectedIndexChanged="ddlOperator_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                            </div>
                                            <div class="rpt-results" id="div_resultInPlane" runat="server" visible="false">
                                                <asp:Repeater ID="rptRoamingInPlane" runat="server">
                                                    <ItemTemplate>
                                                        <table class="table-roaming-results">
                                                            <thead>
                                                                <tr>
                                                                    <th><%= Resources.SITE_Resource.Operator %></th>
                                                                    <th><%= Resources.SITE_Resource.Destination %></th>
                                                                    <th><%= Resources.SITE_Resource.Price_Min %></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td style="width: 35%" rowspan="8"><%# Eval("TITLE") %></td>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Libya %></td>
                                                                    <td style="width: 30%"><%# Eval("LIBYA") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><b><%# Eval("TITLE") %></b></td>
                                                                    <td style="width: 30%"><%# Eval("COUNTRY_VALUE") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Arabic_Europe_Country %></td>
                                                                    <td style="width: 30%"><%# Eval("AR_EUR_COUNTRIES") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Rest_of_the_World %></td>
                                                                    <td style="width: 30%"><%# Eval("REST_OF_WORD") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Satellite_call_Thuraya %></td>
                                                                    <td style="width: 30%"><%# Eval("THURAIA") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Other_satellite_call %></td>
                                                                    <td style="width: 30%"><%# Eval("SATELLITES") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.Receiving_all_the_calls %></td>
                                                                    <td style="width: 30%"><%# Eval("RECEIVE_CALLING") %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 35%"><%= Resources.SITE_Resource.SMS %></td>
                                                                    <td style="width: 30%"><%# Eval("SMS") %></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                            <asp:Label runat="server" ID="lblemptyInPlane" Visible="false" CssClass="empty-roaming"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
