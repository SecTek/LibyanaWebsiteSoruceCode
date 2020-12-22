<%@ control language="C#" autoeventwireup="true" inherits="Controls_Menus, App_Web_menus.ascx.cc671b29" %>


<header id="header" class="style_1">
    <div class="header_meta dark">
        <div class="container">
            <a href="#revealPanel" class="menu_mobile ui-btn ui-btn-inline ui-corner-all ui-shadow mob"><i class="fa fa-bars"></i></a>
            <div class="div-menu-buttons-outer">
                <div class=" col_6_of_12 div-lbBusiness" style="display:none">
                    <asp:LinkButton runat="server" ID="lbBusiness" CssClass="menu-button" Text="<%$ Resources:SITE_Resource, Business%>" OnClick="lbBusiness_Click"></asp:LinkButton>
                </div> <div class=" col_6_of_12 div-lbPersonal">
                    <asp:LinkButton runat="server" ID="lbPersonal" CssClass="menu-button" Text="<%$ Resources:SITE_Resource, Personal%>" OnClick="lbPersonal_Click"></asp:LinkButton>
                </div>
            </div>
            <!-- ======== NAVIGATION ======== -->
            <div class="language-block disktop">
                <asp:LinkButton ID="lbLanguage" runat="server" OnClick="lbLanguage_Click" CssClass="upper-menu-links"></asp:LinkButton>
            </div>

            <nav class="top_navigation">
                <ul class="menu">
                    <asp:Repeater ID="rpt_Parent1" runat="server" OnItemDataBound="rpt_Parent1_ItemDataBound">
                        <ItemTemplate>
                            <li class="<%# CheckIfHaveChiled_Menu1(Eval("ID_MAIN")) %>">
                                <a href="ContentPage.aspx?P=<%# Eval("PAGE_NAME") %>"><%# Eval("TITLE") %></a>
                                <asp:Repeater ID="rpt_Child" runat="server">
                                    <HeaderTemplate>
                                        <ul class="sub-menu">
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li>
                                            <a href="ContentPage.aspx?P=<%# Eval("PAGE_NAME") %>"><%# Eval("TITLE") %></a>
                                        </li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>
                                <asp:HiddenField runat="server" ID="hfParentId" Value='<%# Eval("ID_MAIN") %>' />
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </nav>

            <div class="search_block">
                <div class="search_btn-section">
                    <i class="fa fa-search"></i>
                    <div class="search-txtbox-section">
                        <asp:Panel ID="panSearch" runat="server" DefaultButton="lb_search" Width="100%">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="txtbox-search" placeholder="<%$ Resources:SITE_Resource, Search_our_site%>"></asp:TextBox>
                            <asp:LinkButton runat="server" ID="btnSerach" OnClick="btnSerach_Click" OnClientClick="RemoveValidation()" CssClass="lb_Search"><i class="fa fa-search"></i></asp:LinkButton>
                        </asp:Panel>
                        <asp:LinkButton runat="server" ID="lb_search" OnClick="lb_search_Click" OnClientClick="RemoveValidation()" CssClass="lb_Search" Style="display: none"><i class="fa fa-search"></i></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%----------------------------------------------------------------------------------------------%>

    <div class=" header_menu dark" id="navbar">
        <div class="container">
            <!-- ======== MENU ======== -->
            <nav class="site_navigation">
                <div class="col div-menu-logo no-padding-left">
                    <a href="Default.aspx">
                        <img src="img/logo.png" /></a>
                </div>
                <div class="col div-menu-text ">
                    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="up">
                        <ContentTemplate>
                            <ul class="menu">
                                <asp:Repeater ID="rpt_Parent" runat="server" OnItemDataBound="rpt_Parent_ItemDataBound">
                                    <ItemTemplate>
                                        <li class="<%# CheckIfHaveChiled_Menu2(Eval("ID_MAIN")) %>">
                                            <a class="<%# CheckIfBusinessActive(Eval("PARENT_ID_MAIN")) %>" href="Product.aspx?id=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a>
                                            <ul class="cs_mega_menu" style="<%# CheckIfHaveSubMenu(Eval("ID_MAIN")) %>">
                                                <div class="div-child-menu ">
                                                    <!-- ======================================================== Menu Child ======================================================== -->
                                                    <div class="outer-menu-items" style="">
                                                        <div class="menu-items">
                                                            <asp:Repeater ID="rpt_Child" runat="server">
                                                                <HeaderTemplate>
                                                                    <ul>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <div class="menu-links">
                                                                            <a href="Product.aspx?id=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a>
                                                                        </div>
                                                                    </li>
                                                                </ItemTemplate>
                                                                <FooterTemplate>
                                                                    </ul>
                                                                </FooterTemplate>
                                                            </asp:Repeater>
                                                            <%--========== Menu Child ================--%>
                                                            <asp:Repeater ID="rpt_Service" runat="server">
                                                                <HeaderTemplate>
                                                                    <ul>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <li>
                                                                        <div class="menu-links">
                                                                            <a href="Services.aspx?id=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a>
                                                                        </div>
                                                                    </li>
                                                                </ItemTemplate>
                                                                <FooterTemplate>
                                                                    </ul>
                                                                </FooterTemplate>
                                                            </asp:Repeater>
                                                        </div>
                                                    </div>
                                                    <!-- ====================================================== End Menu Child ======================================================= -->
                                                    <h3><%# Eval("TITLE_DROP_MENU") %></h3>
                                                    <div class="menu-text">
                                                        <%# Localization.StripTagsRegex(Eval("BODY_DROP_MENU").ToString(),200) %><a href="<%# Eval("LINK_DROP_MENU") %>"><%# Eval("TEXT_LINK_DROP_MENU") %></a>
                                                    </div>
                                                </div>
                                            </ul>
                                            <asp:HiddenField runat="server" ID="hfParentId" Value='<%# Eval("ID_MAIN") %>' />
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="col div-menu-logo-3sc no-padding-sides" style="display:none">
                    <img src="img/3sc-logo.png" />
                </div>
            </nav>
        </div>
    </div>
</header>
