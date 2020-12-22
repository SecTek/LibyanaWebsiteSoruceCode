<%@ control language="C#" autoeventwireup="true" inherits="Rotater, App_Web_rotater.ascx.cc671b29" %>
<style>

</style>
<!-- Swiper -->
<div class="swiper-container">
    <div class="swiper-wrapper">
        <asp:Repeater ID="rpt" runat="server">
            <ItemTemplate>
                <div class="swiper-slide" style="background-image: url('<%# GetImage(Eval("IMAGE")) %>')">
                    <div class="card disktop">
                        <a href="<%# Eval("LINK") %>">
                            <div class="card-body">
                                <h2 class="card-title"><%# Eval("TITLE") %></h2>
                                <p class="card-text"><%# Localization.StripTagsRegex(Eval("BODY").ToString(),90) %></p>
                               <span class="readmore-main-rotater"><%# Eval("LINK_TEXT") %></span>
                            </div>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Arrows -->
<%--    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>--%>
</div> 