<%@ control language="C#" autoeventwireup="true" inherits="Featured_Offers, App_Web_featured_offers.ascx.cc671b29" %>

<section class="featured-offer-section">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 featured-offer-main-title"><%= Resources.SITE_Resource.Featured_Offers%></div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 ">
                <div id="featured-offer">
                    <asp:Repeater ID="rpt" runat="server">
                        <ItemTemplate>
                            <div class="es-item">
                                <div class="es-img" style="background-image: url('<%# GetImage(Eval("IMAGE_2")) %>')">
                                </div>
                                <div class="es-title es-title-featured-offers"><a  href="Offer.aspx?Id=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a></div>
                                <div class="es-title-cover es-title-cover-featured-offers" ></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</section>
