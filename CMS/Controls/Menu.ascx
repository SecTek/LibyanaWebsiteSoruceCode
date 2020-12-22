<%@ control language="C#" autoeventwireup="true" inherits="CMS_Controls_Menu, App_Web_menu.ascx.413566a5" %>

<div class="skin-part">
    <div id="tree-wrap">
        <div class="side-bar Custom_Menu">
            <asp:UpdatePanel ID="upMenu" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Repeater ID="rptFirstLevel" runat="server" OnItemDataBound="rptFirstLevel_ItemDataBound">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <ul class="topnav menu-left-nest" runat="server" id="ulFirstLevel" visible='<%# IfActive(DataBinder.Eval(Container,"DataItem.IS_LINKED")) %>'>
                                <li>
                                    <a style="border-left: 0px solid!important;" class="FirstLevel tooltip-tip ajax-load Link_Menu" title='<%# DataBinder.Eval(Container,"DataItem.NAME") %>'>
                                        <span><%# (Eval("NAME")) %></span>
                                    </a>
                                </li>
                                <asp:Repeater ID="rptSecondLevel" runat="server" OnItemDataBound="rptSecondLevel_ItemDataBound">
                                    <HeaderTemplate>
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <li runat="server" id="liSecondLevel">
                                            <asp:HyperLink ID="hlSecondLevel" runat="server" class="tooltip-tip ajax-load Link_Menu"
                                                NavigateUrl='<%# GetURL(DataBinder.Eval(Container,"DataItem.URL")) %>'
                                                title='<%# DataBinder.Eval(Container,"DataItem.NAME") %>'>
                                                <span><%# (Eval("NAME")) %></span>
                                            </asp:HyperLink>
                                        </li>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </ul>
                        </ItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:Repeater>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</div>
