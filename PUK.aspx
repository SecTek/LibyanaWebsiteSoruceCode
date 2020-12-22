<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="PUK, App_Web_puk.aspx.cdcab7d2" %>

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
                        <div class="div-momiaz-number">
                            <div class=""><%= Resources.SITE_Resource.Number%></div>
                            <asp:TextBox runat="server" ID="txt_Number" MaxLength="10" CssClass="txt-momiaz txt-PUK" type="number"></asp:TextBox>
                        </div>
                        <div class="div-momiaz-number">
                            <div class=""><%= Resources.SITE_Resource.Serial_Number%></div>
                            <asp:TextBox runat="server" ID="txtSerial_Number" MaxLength="18" CssClass="txt-momiaz txt-PUK" type="number"></asp:TextBox>
                            <asp:Button runat="server" ID="btn_PUK" Text="<%$ Resources:SITE_Resource,View_Result%>" OnClick="btn_PUK_Click" CssClass="btn-momiaz" />
                        </div>
                        <div class="rpt-results" id="div_result" runat="server" visible="false">
                            <table class="table-repeter-results-PUK">
                                <thead>
                                    <tr>
                                        <th><%= Resources.SITE_Resource.PUK_1 %></th>
                                        <th><%= Resources.SITE_Resource.PUK_2 %></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="width: 50%"><%=Var_PUK1 %></td>
                                        <td style="width: 50%"><%=Var_PUK2 %></td>
                                    </tr>
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
