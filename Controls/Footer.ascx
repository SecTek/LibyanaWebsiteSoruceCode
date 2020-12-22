<%@ control language="C#" autoeventwireup="true" inherits="Footer, App_Web_footer.ascx.cc671b29" %>

<section class="footer-section">
    <div class="container ">
        <div class="row">
            <div class="col col_8_of_12 ">
                <asp:Repeater ID="rpt_Parent" runat="server" OnItemDataBound="rpt_Parent_ItemDataBound">
                    <ItemTemplate>
                        <div class="col col_3_of_12 no-padding-left">
                            <div class="lvl0-title">
                                <a href="ContentPage.aspx?P=<%# Eval("PAGE_NAME") %>"><%# Eval("TITLE") %></a>
                            </div>
                            <asp:Repeater ID="rpt_Child" runat="server">
                                <ItemTemplate>
                                    <div class="lvl1-title">
                                        <a href="ContentPage.aspx?P=<%# Eval("PAGE_NAME") %>"><%# Eval("TITLE") %></a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:Repeater ID="rpt_Product" runat="server">
                                <ItemTemplate>
                                    <div class="lvl1-title">
                                        <a href="Product.aspx?ID=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a>
                                        <asp:HiddenField runat="server" ID="hfCategory" Value='<%# Eval("ID") %>' />
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:HiddenField runat="server" ID="hfParentId" Value='<%# Eval("ID_MAIN") %>' />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col col_4_of_12 ">
                <div class="div-footer-logo">
                    <img src="img/footer-logo.png" />
                </div>
                <div class="div-footer-social-media">
                    <a href="https://www.facebook.com/Libyana.Mobile.Phone" target="_blank"><i class="fa fa-facebook"></i></a>
                <%--    <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>--%>
                    <a href="https://www.youtube.com/channel/UCrtQ0D-AV4bzgasTZBEU69A" target="_blank"><i class="fa fa-youtube"></i></a>
                    <a href="https://www.instagram.com/libyanamobilephoneofficial/" target="_blank"><i class="fa fa-instagram"></i></a>
                    <a href="https://twitter.com/Libyana" target="_blank"><i class="fa fa-twitter"></i></a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col col_12_of_12 footer-msg">
                <%= Resources.SITE_Resource.footer_msg%>
            </div>
        </div>
    </div>

</section>
<section class="disclaimer-section">
    <div class="container ">
        <div class="row">
            <div class="col col_4_of_12 ">
                <a href="ContentPage.aspx?P=21_Privacy_Policy"><%= Resources.SITE_Resource.Privacy_Policy%></a> <span>|</span>
                <a href="ContentPage.aspx?P=23_Site_Map"><%= Resources.SITE_Resource.Sitemap%></a>
            </div>
            <div class="col col_8_of_12 " runat="server" id="div_AllRights">
            </div>
        </div>
    </div>
</section>
