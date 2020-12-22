<%@ control language="C#" autoeventwireup="true" inherits="Media_Center, App_Web_media_center.ascx.cc671b29" %>


<section class="media-center-section">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 featured-offer-main-title"><%= Resources.SITE_Resource.Latest_News_and_Events%></div>
        </div>
    </div>
    <div class="container ">
        <div class="row">
            <%--News--%>
            <div class="col col_8_of_12 home-news">
                <asp:Repeater ID="rpt_News" runat="server">
                    <ItemTemplate>
                        <div class="col col_6_of_12 ">
                            <div class="news-item">
                                <div class="news-img" style="background-image: url('<%# GetImage(Eval("IMAGE_1")) %>')">
                                </div>
                                <div class="news-title"><%# Localization.StripTagsRegex(Eval("TITLE").ToString(),70)  %></div>
                                <div class="news-date"><%# Convert.ToDateTime(Eval("PUBLICATION_DATE")).ToShortDateString() %></div>
                                <div class="news-body"><%# Localization.StripTagsRegex(Eval("BODY").ToString(),150) %></div>
                                <a href="News_Details.aspx?ID=<%# Eval("ID_MAIN") %>">
                                    <div class="div-home-news-link"><%= Resources.SITE_Resource.Learn_More%></div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <a href="News.aspx">
                    <div class="col col_12_of_12 no-padding-sides news-more-link"><%= Resources.SITE_Resource.More%></div>
                </a>
            </div>
            <%--Events--%>
            <div class="col col_4_of_12 home-event">
                <div class="home-event-inner">
                    <asp:Repeater ID="rpt_Events" runat="server">
                        <ItemTemplate>
                            <div class="col col_12_of_12 ">
                                <div class="event-item">
                                    <div class="event-title"><a href="Event_Details.aspx?ID=<%# Eval("ID_MAIN") %>"><%#  Localization.StripTagsRegex(Eval("TITLE").ToString(),70) %></a></div>
                                    <%--<div class="event-date"><a href="Event_Details.aspx?ID=<%# Eval("ID_MAIN") %>"><%# Convert.ToDateTime(Eval("START_DATE")).ToShortDateString() %> - <%# Convert.ToDateTime(Eval("END_DATE")).ToShortDateString() %></a></div>--%>
                                    <div class="event-body"><a href="Event_Details.aspx?ID=<%# Eval("ID_MAIN") %>"><%# Localization.StripTagsRegex(Eval("BODY").ToString(),90) %></a></div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <a href="Events.aspx">
                    <div class="col col_12_of_12 no-padding-sides event-more-link"><%= Resources.SITE_Resource.More%></div>
                </a>
            </div>
        </div>
    </div>
</section>