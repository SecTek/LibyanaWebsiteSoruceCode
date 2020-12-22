<%@ control language="C#" autoeventwireup="true" inherits="MobileMenu, App_Web_mobilemenu.ascx.cc671b29" %>

<div data-role="panel" id="revealPanel" class=" mob jqm-navmenu-panel ui-panel ui-panel-position-<%= Check_Side() %>  ui-panel-display-overlay ui-body-a ui-panel-animate ui-panel-closed" data-position="<%= Check_Side() %>" data-display="overlay" data-theme="a">
    <div class="ui-panel-inner">
        <ul class="jqm-list ui-alt-icon ui-nodisc-icon ui-listview" data-role="collapsible-set">
            <li data-filtertext="form checkboxradio widget checkbox input checkboxes controlgroups">
                <a href="Default.aspx" data-ajax="false" class="ui-btn ui-btn-icon-right ui-icon-home menu-first-element"><%= Resources.SITE_Resource.Home_Page%></a>
            </li>
            <asp:Repeater ID="rpt_Parent" runat="server" OnItemDataBound="rpt_Parent_ItemDataBound">
                <ItemTemplate>
                    <li data-role="<%#CheckHaveChild(Eval("ID_MAIN")) %>" data-enhanced="true" data-collapsed-icon="carat-d"
                        data-expanded-icon="carat-u" data-iconpos="right" data-inset="false"
                        class="ui-collapsible ui-collapsible-themed-content ui-collapsible-collapsed ui-li-static ui-body-inherit no-sub-link">
                        <h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed">
                            <a href="<%#GetFirstLevel_Link(Eval("ID_MAIN")) %>" class="<%#GetFirstLevel_CSS(Eval("ID_MAIN")) %>">
                                <%# Eval("TITLE") %>
                            </a>
                        </h3>
                        <asp:Repeater ID="rpt_Child" runat="server">
                            <HeaderTemplate>
                                <div class="ui-collapsible-content ui-body-inherit ui-collapsible-content-collapsed" aria-hidden="false">
                                    <ul class="ui-listview" data-role="collapsible-set">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li data-filtertext="form checkboxradio widget checkbox input checkboxes controlgroups" class="ui-first-child" style="background-color: #7f4b85">
                                    <a href="<%# GetLink(Eval("ID_MAIN"),Eval("PAGE_NAME"),Eval("PAGE_TYPE")) %>" data-ajax="false" class="ui-btn ui-btn-icon-right ui-icon-carat-r menu-sub-lvl"><%# Eval("TITLE") %></a>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul> </div>
                            </FooterTemplate>
                        </asp:Repeater>
                        <asp:Repeater ID="rpt_Product" runat="server" OnItemDataBound="rpt_Product_ItemDataBound">
                            <HeaderTemplate>
                                <div class="ui-collapsible-content ui-body-inherit ui-collapsible-content-collapsed" aria-hidden="false">
                                    <ul class="ui-listview" data-role="collapsible-set">
                            </HeaderTemplate>
                            <ItemTemplate>
                                <%--         <li data-filtertext="form checkboxradio widget checkbox input checkboxes controlgroups" class="ui-first-child" style="background-color: #7f4b85">
                                    <a href="Product.aspx?id=<%# Eval("ID_MAIN") %>" class="ui-btn ui-btn-icon-right ui-icon-carat-r  menu-sub-lvl"><%# Eval("TITLE") %></a></h3>
                                    <asp:HiddenField runat="server" ID="hfCategory" Value='<%# Eval("ID") %>' /><%# Eval("ID") %>--%>



                                <li data-role="<%#CheckHaveChild_Child(Eval("ID_MAIN")) %>" data-enhanced="true" data-collapsed-icon="carat-d" style="background-color: #7f4b85"
                                    data-expanded-icon="carat-u" data-iconpos="right" data-inset="false"
                                    class="ui-collapsible ui-collapsible-themed-content ui-collapsible-collapsed ui-li-static ui-body-inherit no-sub-link">
                                    <h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed">
                                        <a href="<%#GetLastLevel_Link(Eval("ID_MAIN")) %>" class="<%#GetLastLevel_CSS(Eval("ID_MAIN")) %>">
                                            <%# Eval("TITLE") %>
                                        </a>
                                    </h3>





                                    <asp:Repeater ID="rpt_Last" runat="server">
                                        <HeaderTemplate>
                                            <div class="ui-collapsible-content ui-body-inherit ui-collapsible-content-collapsed" aria-hidden="false">
                                                <ul class="ui-listview" data-role="collapsible-set">
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <li data-enhanced="true" data-collapsed-icon="carat-d" style="background-color: #25245e"
                                                data-expanded-icon="carat-u" data-iconpos="right" data-inset="false"
                                                class="ui-collapsible ui-collapsible-themed-content ui-collapsible-collapsed ui-li-static ui-body-inherit no-sub-link">
                                                <h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed">
                                                    <a href="<%# GetLink(Eval("ID_MAIN"),Eval("PAGE_NAME"),Eval("PAGE_TYPE")) %>" data-ajax="false" class="ui-btn ui-btn-icon-right ui-icon-carat-r menu-sub-lvl"><%# Eval("TITLE") %></a>
                                            </li>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </ul> </div>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <asp:Repeater ID="rpt_Service" runat="server">
                                        <HeaderTemplate>
                                           <div class="ui-collapsible-content ui-body-inherit ui-collapsible-content-collapsed" aria-hidden="false">
                                                <ul class="ui-listview" data-role="collapsible-set">
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                             <li data-enhanced="true" data-collapsed-icon="carat-d" style="background-color: #25245e"
                                                data-expanded-icon="carat-u" data-iconpos="right" data-inset="false"
                                                class="ui-collapsible ui-collapsible-themed-content ui-collapsible-collapsed ui-li-static ui-body-inherit no-sub-link">
                                                <h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed">
                                                    <a href="Services.aspx?id=<%# Eval("ID_MAIN") %>" data-ajax="false" class="ui-btn ui-btn-icon-right ui-icon-carat-r menu-sub-lvl"><%# Eval("TITLE") %></a>
                                            </li> 
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </ul> </div>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <asp:HiddenField runat="server" ID="hfParentId" Value='<%# Eval("ID_MAIN") %>' />
                                     
                                </li> 
                            </ItemTemplate>
                            <FooterTemplate>
                                </ul> </div>
                            </FooterTemplate>
                        </asp:Repeater>
                        <asp:HiddenField runat="server" ID="hfParentId" Value='<%# Eval("ID_MAIN") %>' />
                    </li>
                </ItemTemplate>
            </asp:Repeater>
            <li data-enhanced="true" data-collapsed-icon="carat-d"
                data-expanded-icon="carat-u" data-iconpos="right" data-inset="false"
                class="ui-collapsible ui-collapsible-themed-content ui-collapsible-collapsed ui-li-static ui-body-inherit no-sub-link">
                <h3 class="ui-collapsible-heading ui-collapsible-heading-collapsed">
                    <asp:LinkButton ID="lbLanguage" runat="server" OnClick="lbLanguage_Click" CssClass="ui-collapsible-heading-toggle ui-btn ui-btn-icon-right ui-btn-inherit ui-icon-carat-r"></asp:LinkButton>
                </h3>
            </li>
        </ul>
    </div>
</div>
