<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Package_AddEdit, App_Web_package_addedit.aspx.1f2a64c3" %>

<%@ Register Src="~/CMS/Controls/CustomRadEditor.ascx" TagPrefix="uc1" TagName="CustomRadEditor" %>
<%@ Register Assembly="ImagineControl" Namespace="ImagineControl" TagPrefix="ImagineControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="../Controls/FileUploader.ascx" TagName="FileUploader" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblPackages %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Packages_View.aspx"><%= Resources.CMS_Resource.lblPackages %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right" runat="server" id="li_AddNew">
            <div class="input-group input-widget">
                <a href="Package_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblPackage %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <asp:UpdatePanel runat="server" ID="upDelete" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="body-nest" id="DivDeleteMode" runat="server">
                <section class="UnderValidationSection">
                    <div class="panel-body">
                        <div class="form-horizontal bucket-form">
                            <div class="form-group">
                                <div class="col-sm-7 skin-flat list cb_Row_Height">
                                    <p><%= Resources.CMS_Resource.Msg_DeletedEntry %></p>
                                </div>
                            </div>
                            <div class="form-group" runat="server" id="Div_btnUnDelete">
                                <div class="col-sm-6 skin-flat list cb_Row_Height">
                                    <asp:Button ID="btnUnDelete" runat="server" Text="<%$ Resources:CMS_Resource, btnUnDeleted %>" class="btn btn-danger" OnClick="btnUnDelete_Click" OnClientClick="CheckValidation()" />
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="body-nest" id="DivUpdateMood" runat="server" visible="false">
        <div class="wizard-tab">
            <asp:Repeater ID="rptBody" runat="server" OnItemDataBound="rptBody_ItemDataBound" OnItemCommand="rptBody_ItemCommand">
                <ItemTemplate>
                    <h2 runat="server" id="h2_Lang"><%# Eval("NAME") %></h2>
                    <asp:HiddenField ID="hfLanguage" runat="server" Value='<%# (Eval("ID")) %>' />
                    <section class="UnderValidationSection">
                        <div class="panel-body">
                            <asp:UpdatePanel runat="server" ID="upEntry" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="form-horizontal bucket-form">
                                        <div runat="server" id="div_tab_main">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitle %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"></label>
                                                <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                    <div class="col-sm-3 ">
                                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive" runat="server" type="checkbox"></asp:CheckBox>
                                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"></label>
                                                <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                    <div class="col-sm-3 ">
                                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsMobilePackage" runat="server" type="checkbox"></asp:CheckBox>
                                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsMobilePackage %></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblOrder %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtOrder" runat="server" CssClass="form-control ReqValidation NumberValidation" type="number"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty1 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty1" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty1Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty1Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty2 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty2" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty2Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty2Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty3 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty3" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty3Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty3Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty4 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty4" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty4Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty4Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty5 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty5" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty5Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty5Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty6 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty6" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty6Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty6Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty7 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty7" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty7Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty7Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty8 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty8" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty8Value %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtProperty8Value" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group ContainFTB">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBody %></label>
                                                <div class="col-sm-6">
                                                </div>
                                            </div>
                                            <div class="body-nest">
                                                <uc1:CustomRadEditor runat="server" ID="reBody" />
                                            </div>
                                            <div class="form-group" runat="server" visible='<%# Show_Element_Based_On_Permission(true,false,true,false,false,false,false) %>'>
                                                <label class="col-sm-3 control-label"></label>
                                                <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                    <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="<%$ Resources:CMS_Resource, btnUpdate %>" CssClass="btn btn-primary" OnClientClick="CheckValidation()" />
                                                </div>
                                            </div>
                                        </div>
                                        <div runat="server" id="div_tab_main_hide">
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label" style="text-align: center !important"><%= Resources.CMS_Resource.lblObjectIsCheckedOut %></label>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </section>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="body-nest" id="DivSaveMood" runat="server">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"></h2>
            <section class="UnderValidationSection">
                <asp:UpdatePanel runat="server" ID="upSave" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="panel-body">
                            <div class="form-horizontal bucket-form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitle %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtTitle_Save" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <div class="col-sm-3 ">
                                            <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive_Save" runat="server" type="checkbox"></asp:CheckBox>
                                            <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <div class="col-sm-3 ">
                                            <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsMobilePackage_Save" runat="server" type="checkbox"></asp:CheckBox>
                                            <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsMobilePackage %></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblOrder %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtOrder_Save" runat="server" CssClass="form-control ReqValidation NumberValidation" type="number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty1 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty1_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty1Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty1Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty2 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty2_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty2Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty2Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty3 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty3_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty3Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty3Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty4 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty4_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty4Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty4Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty5 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty5_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty5Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty5Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty6 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty6_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty6Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty6Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty7 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty7_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty7Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty7Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty8 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty8_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblProperty8Value %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtProperty8Value_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 50px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group ContainFTB">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBody %></label>
                                    <div class="col-sm-6">
                                    </div>
                                </div>
                                <div class="body-nest">
                                    <uc1:CustomRadEditor runat="server" ID="reBody_Save" />
                                </div>
                                <div class="form-group" runat="server" id="Div_Save">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:CMS_Resource, btnInsert %>" class="btn btn-primary" OnClick="btnSave_Click" OnClientClick="CheckValidation();" />
                                        <asp:Button ID="btnSave_AddNew" runat="server" Text="<%$ Resources:CMS_Resource, btnInsert_AddNew %>" class="btn btn-primary" OnClick="btnSave_AddNew_Click" OnClientClick="CheckValidation();" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </section>
        </div>
    </div>
</asp:Content>
