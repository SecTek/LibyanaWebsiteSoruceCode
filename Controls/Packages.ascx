<%@ control language="C#" autoeventwireup="true" inherits="Packages, App_Web_packages.ascx.cc671b29" %>


<section class="packages-section">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 featured-offer-main-title"><%= Resources.SITE_Resource.MobileInternetPackages%></div>
        </div>
    </div>
    <div class="container ">
        <div id="tabs" class="col col_12_of_12 packages">
            <asp:Repeater ID="rpt" runat="server">
                <HeaderTemplate>
                    <ul class="ui-tabs-nav  ui-helper-reset ui-helper-clearfix ui-widget-header">
                </HeaderTemplate>
                <ItemTemplate>
                    <li><a href="#tabs-<%# Eval("ID_MAIN").ToString()%>"><%# Eval("TITLE").ToString()  %></a></li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
            <asp:Repeater ID="rpt2" runat="server">
                <ItemTemplate>
                    <div id="tabs-<%# Eval("ID_MAIN").ToString()%>">
                        <div class="package-inner">
                            <div class="package-left">
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_1")) %>'><span class="prop"><%# Eval("PROPERTY_1").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_1_VALUE").ToString()  %></span></div>
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_3")) %>'><span class="prop"><%# Eval("PROPERTY_3").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_3_VALUE").ToString()  %></span></div>
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_5")) %>'><span class="prop"><%# Eval("PROPERTY_5").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_5_VALUE").ToString()  %></span></div>
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_7")) %>'><span class="prop"><%# Eval("PROPERTY_7").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_7_VALUE").ToString()  %></span></div>
                            </div>
                            <div class="package-right">
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_2")) %>'><span class="prop"><%# Eval("PROPERTY_2").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_2_VALUE").ToString()  %></span></div>
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_4")) %>'><span class="prop"><%# Eval("PROPERTY_4").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_4_VALUE").ToString()  %></span></div>
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_6")) %>'><span class="prop"><%# Eval("PROPERTY_6").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_6_VALUE").ToString()  %></span></div>
                                <div class="package-text" style='<%# Display_Propert(Eval("PROPERTY_8")) %>'><span class="prop"><%# Eval("PROPERTY_8").ToString()  %></span><span class="prop-value"><%# Eval("PROPERTY_8_VALUE").ToString()  %></span></div>

                            </div>
                        </div>


                        <div class="package-properties-outer">
                            <div class="package-properties-header">
                                <%= Resources.SITE_Resource.PromotionProperties%>
                            </div>
                            <div class="package-properties-body">
                                <%# Eval("BODY").ToString()  %>
                            </div>
                        </div>



                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>
