<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="DamagedVoucherCard, App_Web_damagedvouchercard.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <script type="text/javascript">

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
            else if (type == "13_Digits_Card") {
                return '<%= Resources.SITE_Resource.ERR_13_Digits_Card %>';
            }
            else if (type == "15_Digits") {
                return '<%= Resources.SITE_Resource.ERR_15_Digits %>';
            }
}
function RemoveValidation() {
    $('.ReqValidation').removeAttr('required');
    $('.NumberValidation').removeAttr('required');
    $('.emailValidation').removeAttr('required');
    $('.DateValidation').removeAttr('required');
    $('.13_Digits_Card').removeAttr('pattern');
    $('.13_Digits_Card').removeAttr('oninvalid');
    $('.15_Digits').removeAttr('pattern');
    $('.15_Digits').removeAttr('oninvalid');
}
function pageLoad() {
    $('.txtbox-Search').on('keyup', function () {
        $('.ReqValidation').removeAttr('required');
        $('.NumberValidation').removeAttr('required');
        $('.emailValidation').removeAttr('required');
        $('.DateValidation').removeAttr('required');
        $('.13_Digits_Card').removeAttr('pattern');
        $('.13_Digits_Card').removeAttr('oninvalid');
        $('.15_Digits').removeAttr('pattern');
        $('.15_Digits').removeAttr('oninvalid');
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
        $('.13_Digits_Card', this).attr('pattern', '^([0-9*]{13})$');
        $('.13_Digits_Card', this).attr('oninvalid', 'InvalidMsg(this,"13_Digits_Card")');
        $('.15_Digits', this).attr('pattern', '^([0-9]{15})$');
        $('.15_Digits', this).attr('oninvalid', 'InvalidMsg(this,"15_Digits")');
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
    <div class="inner-header-section-no-img">
        <div class="container">
            <div class="row">
                <div class="col col_12_of_12 breadcrumb-outer">
                    <div class="page-title page-title-no-img" runat="server" id="div_Title">
                    </div>
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                        <li id="li_Breadcrumb_Parent" runat="server"></li>
                        <li id="li_Breadcrumb_last" runat="server"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_6_of_12" id="div_body" runat="server">
            </div>
            <div class="col col_6_of_12">
                <asp:UpdatePanel runat="server" ID="upForm" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class=" UnderValidation contact-form">
                            <div class="DivThankYou" runat="server" id="DivThankYou" visible="false">
                                <h5><%= Resources.SITE_Resource.Thank_You_For_Submitted_Damaged_Voucher_Card_Form%></h5>
                            </div>
                            <div class="form_group ">
                                <label class="label-req"><%= Resources.SITE_Resource.Phone_Number%></label>
                                <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="txtbox ReqValidation" placeholder="<%$ Resources:SITE_Resource, Enter_The_Phone_Number_Preceded_By%>"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <label class="label-req"><%= Resources.SITE_Resource.Damaged_Voucher_Card_Secret_Number%></label>
                                <asp:TextBox runat="server" ID="txtSecretNumber" CssClass="txtbox ReqValidation 13_Digits_Card" placeholder="<%$ Resources:SITE_Resource, Place_The_Damaged_Secret_Number%>"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <label class="label-req"><%= Resources.SITE_Resource.Damaged_Voucher_Card_Serial_Number%></label>
                                <asp:TextBox runat="server" ID="txtSerialNumber" CssClass="txtbox ReqValidation 15_Digits" placeholder="<%$ Resources:SITE_Resource, 15_Digits%>"></asp:TextBox>
                            </div>
                            <div class="form_group">
                                <label class="label-req"><%= Resources.SITE_Resource.CardType%></label>
                                <asp:DropDownList ID="ddlType" runat="server" CssClass="full-width">
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="10" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="30" Value="5"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form_group">
                                <asp:Button runat="server" ID="btnSubmit" CssClass="btn" Text="<%$ Resources:SITE_Resource, Submit%>" OnClick="btnSubmit_Click" OnClientClick="CheckValidation()" />
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

