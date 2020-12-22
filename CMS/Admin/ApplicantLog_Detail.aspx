<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="ApplicantLog_Detail, App_Web_applicantlog_detail.aspx.1f2a64c3" %>

<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(window).load(function () {
            $('#tblData_ApplicantLog').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblApplicantLog %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="ContactUs_View.aspx"><%= Resources.CMS_Resource.lblApplicantLog %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right"></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"></h2>
            <section class="UnderValidationSection">
                <div class="panel-body">
                    <div class="form-horizontal bucket-form">
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblName %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblGender %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtGender" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblMartial_Status %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtMartial_Status" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBirth_Date %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtBirth_Date" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblBirth_Place %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtBirth_Place" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblNationality %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtNationality" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblNational_ID %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtNational_ID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblPersonal_Card_ID %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtPersonal_Card_ID" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblPassport_Number %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtPassport_Number" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblCity %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblAddress_1 %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtAddress_1" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblAddress_2 %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtAddress_2" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblMobile_Libyana %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtMobile_Libyana" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divMobile_Other">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblMobile_Other %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtMobile_Other" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" style="display: none;">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblPhone %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEmail %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divRelative_Name">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblRelative_Name %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtRelative_Name" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divRelative_Relation">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblRelative_Relation %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtRelative_Relation" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divRelative_Address">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblRelative_Address %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtRelative_Address" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divRelative_Phone">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblRelative_Phone %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtRelative_Phone" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEducation_Degree %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtEducation_Degree" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEducational_Category %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtEducational_Category" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divEducational_Name">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEducational_Name %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtEducational_Name" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblMajor %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtMajor" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblGrade %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtGrade" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblGraduation_Year %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtGraduation_Year" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divIs_Edu_Certified">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblIs_Edu_Certified %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtIs_Edu_Certified" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblComputer_Skills %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtComputer_Skills" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divHad_ICDL">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_ICDL %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_ICDL" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divHad_IT_Certified">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_IT_Certified %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_IT_Certified" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divHad_Libyana_Certified">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Libyana_Certified %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_Libyana_Certified" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_AR_Speaking %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLang_AR_Speaking" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_AR_Writing %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLang_AR_Writing" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_AR_Reading %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLang_AR_Reading" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_EN_Speaking %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLang_EN_Speaking" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_EN_Writing %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLang_EN_Writing" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_EN_Reading %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLang_EN_Reading" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div runat="server" id="divLang_Other">
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_Other_Name %></label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtLang_Other_Name" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_Other_Speaking %></label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtLang_Other_Speaking" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_Other_Writing %></label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtLang_Other_Writing" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLang_Other_Reading %></label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtLang_Other_Reading" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group" runat="server" id="divJob_Role">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblJob_Role %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtJob_Role" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divYears_Of_Experiance">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblYears_Of_Experiance %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtYears_Of_Experiance" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group" runat="server" id="divHad_Tel_Worked">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Tel_Worked %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_Tel_Worked" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Health_Problems %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_Health_Problems" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div runat="server" id="divHad_Health_Problems">
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Health_Problems_Text %></label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtHad_Health_Problems_Text" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Driver_License %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_Driver_License" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div runat="server" id="divHad_Driver_License">
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblDriver_Licence_Type %></label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtDriver_Licence_Type" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group" id="divHad_Activities" runat="server">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Activities %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_Activities" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Judicial_Obligations %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtHad_Judicial_Obligations" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div id="divHad_Judicial_Obligations" runat="server">
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHad_Judicial_Obligations_Text %></label>
                                <div class="col-sm-6">
                                    <asp:TextBox ID="txtHad_Judicial_Obligations_Text" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblCreation_Date %></label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtCreation_Date" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group" runat="server" id="div_CV">
                        <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.CV %></label>
                        <div class="col-sm-6">
                            <asp:UpdatePanel ID="up_CV" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:HiddenField ID="hfCV" runat="server" />
                                    <asp:Button ID="btnDownload_CV" runat="server" Text="<%$ Resources:CMS_Resource, Download %>" CssClass="btn btn-primary" OnClick="btnDownload_CV_Click" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="btnDownload_CV" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label"></label>
                        <div class="col-sm-6 skin-flat list cb_Row_Height">
                        </div>
                    </div>
                </div>
                <div class="body-nest" id="noExperiences" runat="server">
                    <hr />
                    <h4><%= Resources.CMS_Resource.lblNo_EXPERIENCES %></h4>
                    <hr />
                </div>
                <div class="body-nest" id="footable" runat="server">
                    <hr />
                    <h4><%= Resources.CMS_Resource.lblCAREER_EXPERIENCES %></h4>
                    <hr />
                    <table id="tblData_Career" class="table-striped  footable metro-blue gvDataClass" width="100%">
                        <thead>
                            <tr>
                                <th><%= Resources.CMS_Resource.lblJob_Title %></th>
                                <th><%= Resources.CMS_Resource.lblCompany_Name %></th>
                                <th><%= Resources.CMS_Resource.lblSalary %></th>
                                <th><%= Resources.CMS_Resource.lblJob_Description %></th>
                                <th><%= Resources.CMS_Resource.lblReason_For_Leaving %></th>
                            </tr>
                        </thead>
                        <tbody>
                            <aspRepeater:DataPagerRepeater ID="rptData" PersistentDataSource="true" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td style="width: 20%"><%# Eval("JOB_TITLE ") %></td>
                                        <td style="width: 20%"><%# Eval("COMPANY_NAME") %></td>
                                        <td style="width: 20%"><%# Eval("SALARY") %></td>
                                        <td style="width: 20%"><%# Eval("JOB_DESCRIPTION") %></td>
                                        <td style="width: 20%"><%# Eval("REASON_FOR_LEAVING") %></td>
                                    </tr>
                                </ItemTemplate>
                            </aspRepeater:DataPagerRepeater>
                        </tbody>
                    </table>
                </div>
                <div id="DivEmpty" class="Div_Empty no-margin-top" runat="server" visible="false">
                    <p><%= Resources.CMS_Resource.lblEmptyDataText %></p>
                </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

