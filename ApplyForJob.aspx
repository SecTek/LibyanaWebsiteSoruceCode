<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="ApplyForJob, App_Web_applyforjob.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://momentjs.com/downloads/moment.js"></script>
    <style>
        .datepicker {
            position: absolute !important;
        }
    </style>
    <script type="text/javascript">
        function HideDiv_LoadingPage_Footer() {
            $('.Div_LoadingPage_Outer_Footer').hide();
            $('body').css("overflow", "initial");
        }
        function ShowDiv_LoadingPage_Footer() {
            $('.Div_LoadingPage_Outer_Footer').show();
            $('body').css("overflow", "hidden");
            $('.btnScript_Footer').click();
        }

        function RemoveValidationApply() {
            $('.ReqValidation').removeAttr('required');
            $('.NumberValidation').removeAttr('required');
            $('.emailValidation').removeAttr('required');
            $('.DateValidation').removeAttr('required');
            $('.txtUploadedFile').removeAttr('required');
        }

        function GetValidationMsg(type) {
            if (type == "Date") {
                return '<%= Resources.SITE_Resource.ERR_WrongDateFormat %>';
            }
            else if (type == "Number") {
                return '<%= Resources.SITE_Resource.ERR_ValueMustBeNumber %>';
            }
            else if (type == "Required") {
                return '<%= Resources.SITE_Resource.ERR_ThisFieldIsRequired %>';
            }
            else if (type == "Email") {
                return '<%= Resources.SITE_Resource.ERR_WrongEmailFormat %>';
            }
        }

        function pageLoad() {
            $('.txtbox-Search').on('keyup', function () {
                $('.ReqValidation').removeAttr('required');
                $('.txtUploadedFile').removeAttr('required');
                $('.NumberValidation').removeAttr('required');
                $('.emailValidation').removeAttr('required');
                $('.DateValidation').removeAttr('required');
            });
        }
        function CheckValidation() {
                $(".UnderValidation").each(function (index) {
                    $('.ReqValidation', this).attr('required', 'required');
                    $('.NumberValidation', this).attr('type', 'number');
                    $('.emailValidation', this).attr('type', 'email');
                    $('.DateValidation', this).attr('pattern', '^([0-9]{2})/([0-9]{2})/([0-9]{4})$');
                    $('.ReqValidation', this).attr('oninvalid', 'InvalidMsg(this,"Required")');
                    $('.NumberValidation', this).attr('oninvalid', 'InvalidMsg(this,"Number")');
                    $('.emailValidation', this).attr('oninvalid', 'InvalidMsg(this,"Email")');
                    $('.DateValidation', this).attr('oninvalid', 'InvalidMsg(this,"Date")');

                    if ($(".ruUploadSuccess").text() == "") {
                        $('.txtUploadedFile', this).attr('required', 'required');
                        $('.txtUploadedFile', this).attr('oninvalid', 'InvalidMsg(this,"Required")');
                    }

                });
        }
        function InvalidMsg(Control, msg) {
            var x = GetValidationMsg(msg);
            if (Control.validity.valueMissing) {
                Control.setCustomValidity(x);
            }
            else if (Control.validity.typeMismatch) {
                Control.setCustomValidity(x);
            }
            else if (Control.validity.patternMismatch) {
                Control.setCustomValidity(x);
            }
            else {
                Control.setCustomValidity('');
            }
            return true;
        }

        $(document).ready(function () {
            $('.ruBrowse').val('Upload');
            $('.ruRemove').val('Remove');
        });

        function CV_Selected_Upload() {
            $('.ruBrowse').val('Upload your CV');
            $('.ruRemove').val('Remove');
            $('.txtUploadedFile').removeAttr('required');
        }

        function CV_Selected_Removed() {
            $('.ruBrowse').val('Upload your CV');
            $('.ruRemove').val('Remove');
            $('.txtUploadedFile').attr('required', 'required');
        }
        function ChangeText(sender, args) {
            sender.set_text("Updated");
            var upload = $find("<%= RAUCVUploader.ClientID %>");
            $('.ruBrowse').val("Updated");

        }

        $(document).ready(function () {
            $('.Datepicker').datepicker({
                dateFormat: 'dd/mm/yy',
                isDisabled: true,

            });
            //$(".ddlGraduatedYear").change(function () {
            //    getGraduatedYear();
            //});  
        });
        //function getGraduatedYear() {
        //    var GraduatedYear = $(".ddlGraduatedYear").val();
        //    if (GraduatedYear == 0) {
        //        $(".ddlGraduatedYear").after(validateUploadMsg("يرجى اختيار سنة التخرج!"));
        //        $(".ddlGraduatedYear").css("border", "1px solid red");
        //        hideValidateUploadMsg();
        //        return false;
        //    }
        //    else {
        //        $('.ddlGraduatedYear').removeAttr('style');
        //        return true;
        //    }
        //}
        function GetDate() {
            var NationalID = $(".txtNationalID").val();
            if (NationalID.length != 12) {
                $(".txtNationalID").after(validateUploadMsg("يجب ان يتكون الرقم الوطني من 12 خانة"));
                $(".txtNationalID").css("border", "1px solid red");
                hideValidateUploadMsg();
                return false;
            }
            else {
                $('.txtNationalID').removeAttr('style');
            }
            var currentDate = moment(new Date()).format("DD/MM/YYYY");
            var futureMonth = moment(currentDate).add(-18, 'Y').format("DD/MM/YYYY");
            var valDate = $(".Datepicker").val();
            if (Date.parse(valDate) <= Date.parse(futureMonth)) {
                $('.Datepicker').removeAttr('style');
            }
            else {
                $(".Datepicker").after(validateUploadMsg("خانة تاريخ الميلاد لا تقبل أقل من مواليد 2001 أي أكبر من 18 سنة"));
                hideValidateUploadMsg();
                $(".Datepicker").css("border", "1px solid red");
                $('html, body').animate({
                    scrollTop: ($('#cphBody_upForm').offset().top)
                }, 500);
                return false;
            }
           
        }
        function validateUploadMsg(msg) {
            return "<span class=\"CustomValidatorContiner\"><span class=\"CustomValidatorWarningTriangle\"><p></p></span><span class=\"CustomValidatorRequired\" ><span class=\"CustomValidatorWarning\">!</span> " + msg + "</span></span>";
        }
        function hideValidateUploadMsg() {
            setTimeout(function () {
                $(".CustomValidatorContiner").remove();
                $(".CustomValidatorRequired").hide();
            }, 6000);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section" runat="server" id="div_header_image">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li id="li_Breadcrumb_Parent" runat="server" visible="false"></li>
                    <li id="li_Breadcrumb_SubParent" runat="server" visible="false"></li>
                    <li id="li_Breadcrumb_last" runat="server"></li>
                </ul>
                <div class="page-title" runat="server" id="div_Title">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="preloader Div_LoadingPage_Outer_Footer" id="Div_LoadingPage_Footer"></div>
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_12_of_12" id="div_body" runat="server">
            </div>
            <div class="col col_12_of_12">
                <asp:UpdatePanel runat="server" ID="upForm" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class=" UnderValidation contact-form career-form">
                            <div class="DivThankYou" runat="server" id="DivThankYou" visible="false">
                                <h5><%= Resources.SITE_Resource.Thank_You_For_Contacting_Us%></h5>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Personal_Information%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.First_Name%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtFirstName" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Father_Name%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtFatherName" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Grandfather_Name%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtGrandfatherName" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Family_Name%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtFamilyName" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Gender%></label>
                                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Male%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Female%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Marital_Status%></label>
                                    <asp:DropDownList ID="ddlMaritalStatus" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Single%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Married%>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Widowed%>"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, Divorcee%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Birthdate%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" onchange="GetDate()" ID="txtBirthdate" CssClass="txtbox ReqValidation DateValidation Datepicker"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Place_Of_Birth%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtBirthPlace" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Nationality%></label>
                                    <asp:DropDownList ID="ddlNationality" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Libyan%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.National_ID%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtNationalID" onchange="GetDate()" CssClass="txtbox ReqValidation NumberValidation txtNationalID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Personal_Card_ID%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtPersonalCardID" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Passport_Number%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtPassportNumber" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Contact_Information%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.City%></label>
                                    <asp:DropDownList runat="server" ID="ddlCity" CssClass="ddl"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Mobile_1%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtLibyanaMobile" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Mobile_2%></label>
                                    <asp:TextBox runat="server" ID="txtOtherMobile" CssClass="txtbox"></asp:TextBox>
                                </div>
                            </div>
                            <%--   <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Phone_Number%></label>
                                    <asp:TextBox runat="server" ID="txtPhone" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>--%>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Address_1%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtAddress1" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_9_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Address_2%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtAddress2" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Email%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtEmail" CssClass="txtbox emailValidation ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Relative_Person_Name%></label>
                                    <asp:TextBox runat="server" ID="txtRelativePersonName" CssClass="txtbox"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Relative_Person_Relation%></label>
                                    <asp:TextBox runat="server" ID="txtRelativePersonRelation" CssClass="txtbox"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Relative_Person_Phone%></label>
                                    <asp:TextBox runat="server" ID="txtRelativePersonPhone" CssClass="txtbox"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Relative_Person_Address%></label>
                                    <asp:TextBox runat="server" ID="txtRelativePersonAddress" CssClass="txtbox"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Academic_Qualification%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Level_Of_Academic_Education%></label>
                                    <asp:DropDownList ID="ddlLevelOfAcademicEducation" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, No_qualification%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Rudimentary%>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Middle_Diploma%>"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, Secondary%>"></asp:ListItem>
                                        <asp:ListItem Value="5" Text="<%$ Resources:SITE_Resource, High_Diploma%>"></asp:ListItem>
                                        <asp:ListItem Value="6" Text="<%$ Resources:SITE_Resource, Bachelors%>"></asp:ListItem>
                                        <asp:ListItem Value="7" Text="<%$ Resources:SITE_Resource, Master%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Type_Of_Educational_Institution%></label>
                                    <asp:DropDownList ID="ddlTypeOfEducationalInstitution" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, School%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Middle_Institute%>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, High_Institute%>"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, University%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Name_Of_Educational_Institution%> <span class="tex-danger">*</span></label>
                                    <asp:TextBox runat="server" ID="txtNameOfEducationalInstitution" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_4_of_12 pull-right">
                                <div class="form_group">
                                    <label class="label-req"><%= Resources.SITE_Resource.Major%></label>
                                    <%--                                    <asp:TextBox runat="server" ID="txtMajor" CssClass="txtbox ReqValidation"></asp:TextBox>--%>
                                    <asp:DropDownList ID="ddlMajor" runat="server" CssClass="ddl ReqValidation">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Electricity%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Telecom%>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, electronics%>"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, Computer%>"></asp:ListItem>
                                        <asp:ListItem Value="5" Text="<%$ Resources:SITE_Resource, Economie%>"></asp:ListItem>
                                        <asp:ListItem Value="6" Text="<%$ Resources:SITE_Resource, Political_Science%>"></asp:ListItem>
                                        <asp:ListItem Value="7" Text="<%$ Resources:SITE_Resource, Languages%>"></asp:ListItem>
                                        <asp:ListItem Value="8" Text="<%$ Resources:SITE_Resource, Civil_Engineering%>"></asp:ListItem>
                                        <asp:ListItem Value="9" Text="<%$ Resources:SITE_Resource, Secretariat%>"></asp:ListItem>
                                        <asp:ListItem Value="10" Text="<%$ Resources:SITE_Resource, Other%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Grade%></label>
                                    <asp:DropDownList ID="ddlGrade" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Excellent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Very_Good%>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Good%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, Acceptable%>"></asp:ListItem>
                                        <asp:ListItem Value="5" Text="<%$ Resources:SITE_Resource, Weak%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group">
                                    <label class="label-req"><%= Resources.SITE_Resource.Graduated_Year%></label>
                                    <asp:DropDownList runat="server" ID="ddlGraduatedYear" CssClass="ddl ReqValidation ddlGraduatedYear" ></asp:DropDownList>
                                    <%--<asp:TextBox runat="server" ID="txtGraduatedYear" CssClass="txtbox ReqValidation"></asp:TextBox>--%>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group f-p-17-0">
                                    <label class="label-req"><%= Resources.SITE_Resource.IsEduCertified%></label>
                                    <asp:RadioButton ID="rbIsEduCertifiedYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" Checked="true" GroupName="gnIsEduCertified" />
                                    <asp:RadioButton ID="rbIsEduCertifiedNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" GroupName="gnIsEduCertified" />
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Training_And_Development%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Computer_Skills%></label>
                                    <asp:DropDownList ID="ddlComputerSkills" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Excellent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Very_Good%>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Good%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, Acceptable%>"></asp:ListItem>
                                        <asp:ListItem Value="5" Text="<%$ Resources:SITE_Resource, Weak%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group f-p-17-0">
                                    <label class="label-req"><%= Resources.SITE_Resource.Had_ICDL%></label>
                                    <asp:RadioButton ID="rbHadICDLYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" Checked="true" GroupName="gnHadICDL" />
                                    <asp:RadioButton ID="rbHadICDLNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" GroupName="gnHadICDL" />
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Had_IT_Certified%></label>
                                    <asp:RadioButton ID="rbHadITCertifiedYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" Checked="true" GroupName="gnHadITCertified" />
                                    <asp:RadioButton ID="rbHadITCertifiedNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" GroupName="gnHadITCertified" />
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Had_Libyana_Courses%></label>
                                    <asp:RadioButton ID="rbHadLibyanaCoursesYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" Checked="true" GroupName="gnHadLibyanaCourses" />
                                    <asp:RadioButton ID="rbHadLibyanaCoursesNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" GroupName="gnHadLibyanaCourses" />
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Language_Skills%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group f-p-17-0">
                                    <label class="label-req"><%= Resources.SITE_Resource.Arabic%></label>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Speaking%></label>
                                    <asp:DropDownList ID="ddlArSpeaking" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Writing%></label>
                                    <asp:DropDownList ID="ddlArWriting" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Reading%></label>
                                    <asp:DropDownList ID="ddlArReading" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group f-p-17-0">
                                    <label class="label-req"><%= Resources.SITE_Resource.English%></label>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Speaking%></label>
                                    <asp:DropDownList ID="ddlEnSpeaking" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Writing%></label>
                                    <asp:DropDownList ID="ddlEnWriting" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Reading%></label>
                                    <asp:DropDownList ID="ddlEnReading" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Other_Language%></label>
                                    <asp:TextBox runat="server" ID="txtOtherLanguage" CssClass="txtbox"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Speaking%></label>
                                    <asp:DropDownList ID="ddlOtherSpeaking" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Writing%></label>
                                    <asp:DropDownList ID="ddlOtherWriting" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_3_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Reading%></label>
                                    <asp:DropDownList ID="ddlOtherReading" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Fluent%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Intermediate%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Native%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Experience%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.Job_Role%></label>
                                    <asp:TextBox runat="server" ID="txtJob_Rol" CssClass="txtbox"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group">
                                    <label class="label-req"><%= Resources.SITE_Resource.Years_Of_Experience%></label>
                                    <asp:TextBox runat="server" ID="txtYearsOfExperience" CssClass="txtbox NumberValidation" type="number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_4_of_12">
                                <div class="form_group f-p-17-0">
                                    <label class="label-req"><%= Resources.SITE_Resource.IsWorkedOnTel%></label><br />
                                    <asp:RadioButton ID="rbIsWorkedOnTelYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" Checked="true" GroupName="gnIsWorkedOnTel" />
                                    <asp:RadioButton ID="rbIsWorkedOnTelNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" GroupName="gnIsWorkedOnTel" />
                                </div>
                            </div>

                            <%--///////////////////////////////////////////////--%>

                            <div class="form_group">
                                <div class="col col_12_of_12">
                                    <asp:UpdatePanel ID="cc" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:GridView ID="gvExperience" runat="server" ShowFooter="false" AutoGenerateColumns="false" CssClass="dynamic-table">
                                                <Columns>
                                                    <asp:BoundField DataField="RowNumber" HeaderText="" ItemStyle-CssClass="center-text" />
                                                    <asp:TemplateField HeaderText="<%$ Resources:SITE_Resource, Job_Title%>" ControlStyle-CssClass="txtbox">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtJobTitle" runat="server" CssClass="txtbox" ValidationGroup="add"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="<%$ Resources:SITE_Resource, Company_Name%>" ControlStyle-CssClass="txtbox">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtCompanyName" runat="server" CssClass="txtbox" ValidationGroup="add"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="<%$ Resources:SITE_Resource, Salary%>" ControlStyle-CssClass="txtbox NumberValidation">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtSalary" runat="server" type="number" CssClass="txtbox NumberValidation" ValidationGroup="add"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="<%$ Resources:SITE_Resource, Job_Description%>" ControlStyle-CssClass="txtbox">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtJobDescription" runat="server" CssClass="txtbox" ValidationGroup="add"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="<%$ Resources:SITE_Resource, Reason_for_Leaving%>" ControlStyle-CssClass="txtbox">
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="txtReasonForLeaving" runat="server" CssClass="txtbox" ValidationGroup="add"></asp:TextBox>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:Button runat="server" ID="ButtonAdd" CssClass="btn btn-add-icon" Text="<%$ Resources:SITE_Resource, Add%>" OnClick="ButtonAdd_Click" OnClientClick="RemoveValidationApply()" ValidationGroup="add" />
                                            <asp:Button runat="server" ID="ButtonRemove" CssClass="btn btn-remove-icon" Text="<%$ Resources:SITE_Resource, Remove%>" OnClick="ButtonRemove_Click" OnClientClick="RemoveValidationApply()" ValidationGroup="add" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>

                            <%--//////////////////////////////////////////////////////--%>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Other_Informations%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_12_of_12" id="divHadHealthProblems" runat="server">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.HadHealthProblems%></label><br />
                                    <asp:RadioButton ID="rbHadHealthProblemsYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" GroupName="gnHadHealthProblems" OnCheckedChanged="rbHadHealthProblems_CheckedChanged" AutoPostBack="true" />
                                    <asp:RadioButton ID="rbHadHealthProblemsNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" Checked="true" GroupName="gnHadHealthProblems" OnCheckedChanged="rbHadHealthProblems_CheckedChanged" AutoPostBack="true" />
                                </div>
                            </div>
                            <div class="col col_12_of_12" id="divHadHealthProblemsYes" runat="server" visible="false">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.If_Yes_Please_Write_Them_Below%> <span class="tex-danger">*</span></label><br />
                                    <asp:TextBox runat="server" ID="txtHadHealthProblemsYes" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_12_of_12" id="divHadDriverLicence" runat="server">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.HadDriverLicence%></label><br />
                                    <asp:RadioButton ID="rbHadDriverLicenceYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" GroupName="gnHadDriverLicence" OnCheckedChanged="rbHadDriverLicence_CheckedChanged" AutoPostBack="true" />
                                    <asp:RadioButton ID="rbHadDriverLicenceNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" Checked="true" GroupName="gnHadDriverLicence" OnCheckedChanged="rbHadDriverLicence_CheckedChanged" AutoPostBack="true" />
                                </div>
                            </div>
                            <div class="col col_12_of_12" id="divHadDriverLicenceYes" runat="server" visible="false">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.If_Yes_Please_Select_The_Type_Below%></label><br />
                                    <asp:DropDownList ID="ddlDriverLicence" runat="server" CssClass="ddl">
                                        <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, First_Degree%>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Second_Degree%>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Third_Degree%>" Selected="True"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, Fourth_Degree%>"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.HadActivities%></label><br />
                                    <asp:RadioButton ID="rbHadActivitiesYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" GroupName="gnHadActivities" />
                                    <asp:RadioButton ID="rbHadActivitiesNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" Checked="true" GroupName="gnHadActivities" />
                                </div>
                            </div>
                            <div class="col col_12_of_12" id="divgnHadJudicialProblems" runat="server">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.HadJudicialProblems%></label><br />
                                    <asp:RadioButton ID="rbHadJudicialProblemsYes" runat="server" Text="<%$ Resources:SITE_Resource, Yes%>" GroupName="gnHadJudicialProblems" OnCheckedChanged="rbHadJudicialProblems_CheckedChanged" AutoPostBack="true" />
                                    <asp:RadioButton ID="rbHadJudicialProblemsNo" runat="server" Text="<%$ Resources:SITE_Resource, No%>" Checked="true" GroupName="gnHadJudicialProblems" OnCheckedChanged="rbHadJudicialProblems_CheckedChanged" AutoPostBack="true" />
                                </div>
                            </div>
                            <div class="col col_12_of_12" id="divgnHadJudicialProblemsYes" runat="server" visible="false">
                                <div class="form_group ">
                                    <label class="label-req"><%= Resources.SITE_Resource.If_Yes_Please_Write_Them_Below%> <span class="tex-danger">*</span></label><br />
                                    <asp:TextBox runat="server" ID="txtgnHadJudicialProblemsYes" CssClass="txtbox ReqValidation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group ">
                                    <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.CV%><i class="fa fa-arrow-down f-right"></i></h4>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group">
                                    <telerik:RadAsyncUpload runat="server" ID="RAUCVUploader" MaxFileInputsCount="1" TemporaryFolder="~/Temp/" AllowedFileExtensions="pdf,jpeg,jpg,.doc,.docx" MultipleFileSelection="Disabled"
                                        PostbackTriggers="btnSubmit" OnClientFileUploadRemoved="CV_Selected_Removed" OnClientFilesUploaded="CV_Selected_Upload" MaxFileSize="5242880">
                                    </telerik:RadAsyncUpload>
                                    <asp:TextBox ID="txtUploadedFile" runat="server" class="form-control txtUploadedFile"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col_12_of_12" style="width: 100%">
                                <div class="col-xs-12 col-sm-12 col-md-12 ">
                                    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
                                    <script type="text/javascript">  
                                        var your_site_key = '<%= ConfigurationManager.AppSettings["Recaptcha_SiteKey"]%>';
                                        var renderRecaptcha = function () {
                                            grecaptcha.render('recaptcha', {
                                                'sitekey': your_site_key,
                                                theme: 'light', //light or dark    
                                                type: 'image',// image or audio    
                                                size: 'normal'//normal or compact    
                                            });
                                        };
                                    </script>
                                    <script type="text/javascript">
                                        var onloadCallback = function () {
                                            grecaptcha.render('recaptcha', {
                                                'sitekey': '<%= ConfigurationManager.AppSettings["Recaptcha_SiteKey"]%>'
                                            });
                                        };
                                    </script>
                                    <div id="recaptcha" class="recaptcha"></div>
                                    <label id="lblMessage" class="lblMessage-recaptcha" runat="server" clientidmode="static"></label>
                                </div>
                            </div>
                            <div class="col col_12_of_12">
                                <div class="form_group">
                                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn" Text="<%$ Resources:SITE_Resource, Submit_Form%>" OnClientClick="CheckValidation()" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnScript_Footer" runat="server" Text="Script" CssClass="btnScript_Footer" Style="display: none" OnClick="btnScript_Footer_Click" /><br />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
    <div class="div-cphBanner">
        <div class="container ">
            <div class="row">
                <div class="col col_12_of_12">
                    <uc1:Services runat="server" ID="Services" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
    <asp:Literal runat="server" ID="lit_Footer_Banner"></asp:Literal>
</asp:Content>

