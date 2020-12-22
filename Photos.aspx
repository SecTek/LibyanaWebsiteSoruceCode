<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Photos, App_Web_photos.aspx.cdcab7d2" %>

<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
	<div class="container page-without-header">
		<div class="row">
			<div class="col col_12_of_12 breadcrumb-outer">
				<ul class="breadcrumb">
					<li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
					<li id="li_Breadcrumb_Parent" runat="server"></li>
					<li id="li_Breadcrumb_last" runat="server"></li>
					<li id="li_Breadcrumb_photo" runat="server"></li>
				</ul>
			</div>
		</div>
	</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
	<div class="container div-body-outer">
		<div class="row">
			<ul class="ul-photos-list">
				<asp:UpdatePanel runat="server" ID="up" UpdateMode="Conditional">
					<ContentTemplate>
						<aspRepeater:DataPagerRepeater ID="rpt" PersistentDataSource="true"
							runat="server">
							<ItemTemplate>
								<li class="li-photos-list"><a class="group1" href="<%# GetImage(Eval("IMAGE_1")) %>" >
									<div class="div-photos-list-img" style="background-image: url('<%# GetImage(Eval("IMAGE_1")) %>')"></div></a>
								</li>
							</ItemTemplate>
						</aspRepeater:DataPagerRepeater>
						<div class="PagerContainer" id="divPagerContainer" runat="server">
							<asp:DataPager ID="pgrCustomRepeater" runat="server" PagedControlID="rpt"
								class="pager" PageSize="6">
								<Fields>
									<asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
										ShowFirstPageButton="false" ShowNextPageButton="false" ShowLastPageButton="false"
										ShowPreviousPageButton="true" PreviousPageText="<%$ Resources:Site_resource,Prev %>" />
									<asp:NumericPagerField ButtonCount="10" CurrentPageLabelCssClass="selected" NextPreviousButtonCssClass="pagerbuttons"
										RenderNonBreakingSpacesBetweenControls="true" NumericButtonCssClass="pagerbuttons" />
									<asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
										ShowFirstPageButton="false" ShowPreviousPageButton="false" ShowNextPageButton="true"
										ShowLastPageButton="false" NextPageText="<%$ Resources:Site_resource,Next %>" />
								</Fields>
							</asp:DataPager>
						</div>
					</ContentTemplate>
				</asp:UpdatePanel>
			</ul>
		</div>
	</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

