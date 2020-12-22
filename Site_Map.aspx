<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Site_Map, App_Web_site_map.aspx.cdcab7d2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section" runat="server" id="div_header_image">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container page-without-header">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li runat="server" id="li_pagename"></li>
                </ul>
                <div class="page-title" runat="server" id="div_Title">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_12_of_12">
                <ul class="ul-sitemap">
                    <asp:Repeater ID="rpt_Parent" runat="server" OnItemDataBound="rpt_Parent_ItemDataBound">
                        <ItemTemplate>
                            <li class="lvl0-title voyelle" data-value="42">
                                <a href="ContentPage.aspx?P=<%# Eval("PAGE_NAME") %>"><%# Eval("TITLE") %></a>
                                <ul>
                                    <asp:Repeater ID="rpt_Child" runat="server" OnItemDataBound="rpt_Child_ItemDataBound">
                                        <ItemTemplate>
                                            <li class="lvl1-title">
                                                <a href="ContentPage.aspx?P=<%# Eval("PAGE_NAME") %>"><%# Eval("TITLE") %></a>
                                                <asp:Repeater ID="rpt_Child_2" runat="server">
                                                    <HeaderTemplate>
                                                        <ul>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <li class="lvl2-title">
                                                            <a href="ContentPage.aspx?P=<%# Eval("PAGE_NAME") %>"><%# Eval("TITLE") %></a>
                                                        </li>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </ul>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                                <asp:HiddenField runat="server" ID="hfChild_PId" Value='<%# Eval("ID_MAIN") %>' />
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:Repeater ID="rpt_Product" runat="server" OnItemDataBound="rpt_Product_ItemDataBound">
                                        <ItemTemplate>
                                            <li class="lvl1-title">
                                                <a href="Product.aspx?ID=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a>
                                                <asp:Repeater ID="rpt_Child_pr_2" runat="server">
                                                    <HeaderTemplate>
                                                        <ul>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <li class="lvl2-title">
                                                            <a href="Product.aspx?ID=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a>
                                                        </li>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </ul>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                                <asp:HiddenField runat="server" ID="hfCategory" Value='<%# Eval("ID_MAIN") %>' />
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:HiddenField runat="server" ID="hfParentId" Value='<%# Eval("ID_MAIN") %>' />
                                </ul>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

