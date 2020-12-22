<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="ContactUs, App_Web_contactus.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
        function RemoveValidation() {
            $('.ReqValidation').removeAttr('required');
            $('.NumberValidation').removeAttr('required');
            $('.emailValidation').removeAttr('required');
            $('.DateValidation').removeAttr('required');
        }
        function pageLoad() {
            $('.txtbox-Search').on('keyup', function () {
                $('.ReqValidation').removeAttr('required');
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
            <div class="col col_6_of_12" id="div_body" runat="server">
            </div>
            <div class="col col_6_of_12">
                <asp:UpdatePanel runat="server" ID="upForm" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class=" UnderValidation contact-form">
                            <div class="DivThankYou" runat="server" id="DivThankYou" visible="false">
                                <h5><%= Resources.SITE_Resource.Thank_You_For_Contacting_Us%></h5>
                            </div>
                            <div class="form_group ">
                                <label class="label-req"><%= Resources.SITE_Resource.Name%></label>
                                <asp:TextBox runat="server" ID="txtName" CssClass="txtbox ReqValidation" placeholder="<%$ Resources:SITE_Resource, Enter_Your_Name%>"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <label class="label-req"><%= Resources.SITE_Resource.Email%></label>
                                <asp:TextBox runat="server" ID="txtEmail" CssClass="txtbox emailValidation ReqValidation" placeholder="<%$ Resources:SITE_Resource, Enter_Your_Email%>"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <label class="label-req"><%= Resources.SITE_Resource.Phone_Number%></label>
                                <asp:TextBox runat="server" ID="txtPhone" CssClass="txtbox ReqValidation" placeholder="<%$ Resources:SITE_Resource, Enter_Your_Phone_Number%>"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <label class="label-req"><%= Resources.SITE_Resource.Form_Subject%></label>
                                <asp:TextBox runat="server" ID="txtSubject" CssClass="txtbox ReqValidation" placeholder="<%$ Resources:SITE_Resource, Enter_Form_Subject%>"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <label class="label-req"><%= Resources.SITE_Resource.Your_Message%></label>
                                <asp:TextBox runat="server" ID="txtMsg" CssClass="txtbox textarea-multiline  ReqValidation" placeholder="<%$ Resources:SITE_Resource, Enter_Your_Message%>" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <asp:Button runat="server" ID="btnSubmit" CssClass="btn" Text="<%$ Resources:SITE_Resource, Send_Message%>" OnClick="btnSubmit_Click" OnClientClick="CheckValidation()" />
                                <asp:Button ID="btnScript_Footer" runat="server" Text="Script" CssClass="btnScript_Footer" Style="display: none" OnClick="btnScript_Footer_Click" /><br />

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

