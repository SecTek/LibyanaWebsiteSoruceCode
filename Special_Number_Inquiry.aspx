<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Special_Number_Inquiry, App_Web_special_number_inquiry.aspx.cdcab7d2" %>

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
    <div class="container div-body-outer">
        <div class="row margin-bot-20" runat="server" id="div_body_row">
            <div class="col col_12_of_12" runat="server" id="div_body_inner">
            </div>
        </div>
        <div class="row">
            <div class="col col_12_of_12">
                <asp:UpdatePanel runat="server" ID="up">
                    <ContentTemplate>
                        <div class="div-momiaz-category">
                            <div class=""><%= Resources.SITE_Resource.Category%></div>
                            <asp:RadioButtonList ID="rbl_Category" runat="server" RepeatDirection="Horizontal" CssClass="rbl-momiaz">
                                <asp:ListItem Value="-1" Text="<%$ Resources:SITE_Resource, All %>" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="0" Text="<%$ Resources:SITE_Resource,Diamond%>"></asp:ListItem>
                                <asp:ListItem Value="1" Text="<%$Resources:SITE_Resource,Golden%>"></asp:ListItem>
                                <asp:ListItem Value="2" Text="<%$Resources:SITE_Resource,Silver%>"></asp:ListItem>
                                <asp:ListItem Value="3" Text="<%$Resources:SITE_Resource,Bronze%>"></asp:ListItem>
                                <asp:ListItem Value="4" Text="<%$Resources:SITE_Resource,Typical%>"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="div-momiaz-operator">
                            <div class=""><%= Resources.SITE_Resource.Operator%></div>
                            <asp:RadioButtonList ID="rbl_Operator" runat="server" RepeatDirection="Horizontal" CssClass="rbl-momiaz">
                                <asp:ListItem Value="0" Text="<%$ Resources:SITE_Resource,All%>" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="92" Text="092"></asp:ListItem>
                                <asp:ListItem Value="94" Text="094"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="div-momiaz-number">
                            <div class=""><%= Resources.SITE_Resource.Number%></div>
                            <asp:TextBox runat="server" ID="txt_Number" MaxLength="7" CssClass="txt-momiaz"></asp:TextBox>
                            <asp:Button runat="server" ID="btn_momiaz" Text="<%$ Resources:SITE_Resource,View_Numbers%>" OnClick="btn_momiaz_Click" CssClass="btn-momiaz" />
                        </div>
                        <div class="rpt-results" id="div_rpt" runat="server" visible="false">
                            <table class="table-repeter-results-momiaz">
                                <thead>
                                    <tr>
                                        <th><%= Resources.SITE_Resource.lblPhoneNo %></th>
                                        <th><%= Resources.SITE_Resource.lblPhoneCategoryName %></th>
                                        <th><%= Resources.SITE_Resource.lblPhonePrice %></th>
                                        <th><%= Resources.SITE_Resource.lblPhoneStateName %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rpt" runat="server">
                                        <HeaderTemplate>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td style="width: 25%"><%# Eval("PhoneNo") %></td>
                                                <td style="width: 25%"><%# Eval("PhoneCategoryName") %></td>
                                                <td style="width: 25%"><%# Eval("PhonePrice") %></td>
                                                <td style="width: 25%"><%# Eval("PhoneStateName") %></td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate></FooterTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>
                        <asp:Label runat="server" ID="lblempty" Visible="false"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
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


