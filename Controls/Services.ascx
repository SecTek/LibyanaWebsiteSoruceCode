<%@ control language="C#" autoeventwireup="true" inherits="Services, App_Web_services.ascx.cc671b29" %>

<section class="home-service-section">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 home-service-main-title">
                <%= Resources.SITE_Resource.Latest_Services%>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 ">
                <div id="home-service">
                    <asp:Repeater ID="rpt" runat="server">
                        <ItemTemplate>
                            <div>
                                <div class=" col_12_of_12 ot-image">
                                    <img src="<%# GetImage(Eval("IMAGE_2")) %>" />
                                </div>
                                <div class=" col_12_of_12 ot-text">
                                    <h4><%# Eval("TITLE") %></h4>
                                    <h5><%# Localization.StripTagsRegex(Eval("BODY").ToString(),120) %></h5>
                                    <a href="Services.aspx?ID=<%# Eval("ID_MAIN") %>">
                                        <div class="div-home-services-link"><%= Resources.SITE_Resource.Learn_More%></div>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</section>
