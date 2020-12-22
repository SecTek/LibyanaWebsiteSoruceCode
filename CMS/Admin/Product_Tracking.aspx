﻿<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Product_Tracking, App_Web_product_tracking.aspx.1f2a64c3" %>

<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%@ Register Src="~/CMS/Controls/CustomRadEditor_Tracking.ascx" TagPrefix="uc1" TagName="CustomRadEditor" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblProducts %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <asp:UpdatePanel ID="upbreadcrumb" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <ul id="breadcrumb">
                <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
                <li><i class="fa fa-lg fa-angle-right"></i></li>
                <li><a href="../Admin/Products_View.aspx"><%= Resources.CMS_Resource.lblProducts %></a></li>
                <li><i class="fa fa-lg fa-angle-right"></i></li>
                <li runat="server" id="li_BreadCrumbs"></li>
                <li class="pull-right">
                    <div class="input-group input-widget">
                        <asp:DropDownList ID="ddlLanguage" runat="server" Width="96px" CssClass="dllLang_Tracking" AutoPostBack="true" OnSelectedIndexChanged="ddlLanguage_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </li>
            </ul>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div id="Div_Main" runat="server">
        <div class="body-nest footable_Tracking" id="footable" runat="server">
            <table id="tblData" class="table-striped footable-res footable metro-blue gvDataClass" data-page-size="10000">
                <thead>
                    <tr>
                        <th><i class="fontawesome-ok"></i></th>
                        <th><%= Resources.CMS_Resource.lblCreated_By %></th>
                        <th><%= Resources.CMS_Resource.lblCreated_Date %></th>
                        <th><%= Resources.CMS_Resource.lblTrackingAction %></th>
                        <th runat="server" id="th_Restore"><%= Resources.CMS_Resource.lblRestore %></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptData" runat="server" OnItemDataBound="rptData_ItemDataBound">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td style="width: 3%">
                                    <asp:HiddenField ID="hfID_MAIN_TRACK" runat="server" Value='<%# Bind("ID_MAIN_TRACK") %>' />
                                    <asp:CheckBox CssClass="frm_Checkbox" ID="cbSelect" runat="server" type="checkbox"></asp:CheckBox>
                                </td>
                                <td style="width: 32%"><%# Eval("CREATED_BY_NAME") %></td>
                                <td style="width: 35%"><%# Eval("CREATED_DATE") %></td>
                                <td style="width: 20%"><%# Eval("ACTION_STRING") %></td>
                                <td style="width: 10%" runat="server" visible='<%# Show_Element_Based_On_Permission(true,false,false,false,false,true,false) %>'>
                                    <cc1:MyCustomButton runat="server" ID="btnRestore" OnClick="btnRestore_Click" class='entypo-reply LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, lblRestore %>" Visible='<%#Localization.Tracking_Check_If_Deleted(Convert.ToInt16(Eval("ACTION")), Convert.ToBoolean( Eval("IS_DELETED_OBJECT")))  %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <div id="DivbtnCompare" runat="server" class="input-group input-widget btn_Compare_Cls">
                <asp:Button runat="server" ID="btnCompare" Text="<%$ Resources:CMS_Resource, CompareSelected %>" CssClass="btn btn-info" OnClick="btnCompare_Click" />
            </div>
        </div>
        <div id="Div_Comparison" runat="server" class="btn_Compare_Cls" visible="false">
            <div class="Div_Old_Class" id="Div_Old" runat="server">
                <div class="Div_Header">
                    <div class="DivHeaderDetails">
                        <div>
                            <asp:Label ID="lblCreatedBy_Old" runat="server"></asp:Label>
                        </div>
                        <div>
                            <asp:Label ID="lblCreatedDate_Old" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="DivRestoreThis">
                        <asp:HiddenField ID="hf_ID_TRACK_Old" runat="server" />
                        <asp:HiddenField ID="hf_ID_MAIN_TRACK_Old" runat="server" />
                        <div id="Div_btnRestore_Old" runat="server">
                            <asp:Button runat="server" ID="btnRestore_Old" Text="<%$ Resources:CMS_Resource, lblRestoreThisVersion %>" CssClass="btn btn-info" OnClick="btnRestore_Old_Click" />
                        </div>
                    </div>
                </div>
                <div class="body-nest">
                    <section>
                        <div class="panel-body">
                            <div class="form-horizontal bucket-form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblParentTitle %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtParentTitle_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitle %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtTitle_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive_Old" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                    </div>
                                </div>
                                            <div class="form-group" style="display:none">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIs_Business_Old" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIs_Business  %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsDeleted_Old" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsDeleted %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsLink_Old" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsLink %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbShowInDropMenu_Old" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblShowInDropMenu %></label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblOrder %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtOrder_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProductLink %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtProductLink_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblImage %></label>
                                    <div id="DivImage_Old" runat="server">
                                        <asp:TextBox ID="txtImage_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <a id="aImage_Old" runat="server" target="_blank" class="btn btn-warning ImagePopup" onclick="ImagePopup();"><%= Resources.CMS_Resource.lblShowImage %></a>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblSmallImage %></label>
                                    <div id="DivImage2_Old" runat="server">
                                        <asp:TextBox ID="txtImage2_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <a id="aImage2_Old" runat="server" target="_blank" class="btn btn-warning ImagePopup" onclick="ImagePopup();"><%= Resources.CMS_Resource.lblShowImage %></a>
                                </div>
                                <div class="form-group ContainFTB">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBody %></label>
                                    <div class="col-sm-8">
                                    </div>
                                </div>
                                <div class="body-nest">
                                    <uc1:CustomRadEditor runat="server" ID="reBody_Old" />
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitleDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtTitleDropMenu_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLinkDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtLinkDropMenu_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTextLinkDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtTextLinkDropMenu_Old" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBodyLinkDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtBodyLinkDropMenu_Old" runat="server" CssClass="form-control" Style="height: 150px !important" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <div class="Div_New_Class" id="Div_New" runat="server">
                <div class="Div_Header">
                    <div class="DivHeaderDetails">
                        <div>
                            <asp:Label ID="lblCreatedBy_New" runat="server"></asp:Label>
                        </div>
                        <div>
                            <asp:Label ID="lblCreatedDate_New" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="DivRestoreThis">
                        <asp:HiddenField ID="hf_ID_TRACK_New" runat="server" />
                        <asp:HiddenField ID="hf_ID_MAIN_TRACK_New" runat="server" />
                        <div id="Div_btnRestore_New" runat="server">
                            <asp:Button runat="server" ID="btnRestore_New" Text="<%$ Resources:CMS_Resource, lblRestoreThisVersion %>" CssClass="btn btn-info" OnClick="btnRestore_New_Click" />
                        </div>
                    </div>
                </div>
                <div class="body-nest">
                    <section>
                        <div class="panel-body">
                            <div class="form-horizontal bucket-form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblParentTitle %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtParentTitle_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitle %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtTitle_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive_New" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                    </div>
                                </div>
                                            <div class="form-group" style="display:none">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIs_Business_New" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIs_Business  %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsDeleted_New" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsDeleted %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsLink_New" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsLink %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbShowInDropMenu_New" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblShowInDropMenu %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblOrder %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtOrder_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProductLink %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtProductLink_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblImage %></label>
                                    <div id="DivImage_New" runat="server">
                                        <asp:TextBox ID="txtImage_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <a id="aImage_New" runat="server" target="_blank" class="btn btn-warning ImagePopup" onclick="ImagePopup();"><%= Resources.CMS_Resource.lblShowImage %></a>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblSmallImage %></label>
                                    <div id="DivImage2_New" runat="server">
                                        <asp:TextBox ID="txtImage2_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <a id="aImage2_New" runat="server" target="_blank" class="btn btn-warning ImagePopup" onclick="ImagePopup();"><%= Resources.CMS_Resource.lblShowImage %></a>
                                </div>
                                <div class="form-group ContainFTB">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBody %></label>
                                    <div class="col-sm-8">
                                    </div>
                                </div>
                                <div class="body-nest">
                                    <uc1:CustomRadEditor runat="server" ID="reBody_New" />
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitleDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtTitleDropMenu_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLinkDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtLinkDropMenu_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTextLinkDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtTextLinkDropMenu_New" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBodyLinkDropMenu %></label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtBodyLinkDropMenu_New" runat="server" CssClass="form-control" Style="height: 150px !important" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div id="DivEmpty" class="Div_Empty" runat="server" visible="false">
        <p><%= Resources.CMS_Resource.lblEmptyDataText %></p>
    </div>
</asp:Content>
