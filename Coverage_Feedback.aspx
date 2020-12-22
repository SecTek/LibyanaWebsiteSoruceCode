<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Coverage_Feedback, App_Web_coverage_feedback.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        html, body, iframe, #map-canvas {
            height: 500px !important;
            margin: 0px !important;
            padding: 0px !important;
        }

        .datepicker {
            position: absolute !important;
        }
    </style>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFPvOTdrKWNOYTuNhnne77N1oqdyBUdBo"></script>

    <script type="text/javascript">
        <%= Store_Script %>
    </script>

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
        $(document).ready(function () {
            setTimeout(function () { $(".dismissButton").click(); }, 1500);

        });
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
            <div class="col col_12_of_12" id="div_body" runat="server">
            </div>
            <div class="col col_12_of_12">
                <div class=" UnderValidation contact-form career-form">
                    <div class="DivThankYou" runat="server" id="DivThankYou" visible="false">
                        <h5><%= Resources.SITE_Resource.Thank_You_For_Contacting_Us%></h5>
                    </div>
                    <div class="col col_4_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.City%></label>
                            <asp:DropDownList runat="server" ID="ddlCity" CssClass="ddl" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col col_4_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Area%></label>
                            <asp:TextBox runat="server" ID="txtArea" CssClass="txtbox ReqValidation"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_4_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Nearest_Point%></label>
                            <asp:TextBox runat="server" ID="txtNearestPoint" CssClass="txtbox ReqValidation"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Select_From_Map%></label>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group ">
                            <div id="map-canvas"></div>
                        </div>
                    </div>
                    <div class="col col_6_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Longitude%></label>
                            <asp:TextBox runat="server" ID="txtLongitude" CssClass="txtbox ReqValidation Longitude" Enabled="false"></asp:TextBox>
                        </div>
                    </div>


                    <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>


                    <div class="col col_6_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Latitude%></label>
                            <asp:TextBox runat="server" ID="txtLatitude" CssClass="txtbox ReqValidation Latitude" Enabled="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group ">
                            <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Subscriber_Information%><i class="fa fa-arrow-down f-right"></i></h4>
                        </div>
                    </div>
                    <div class="col col_4_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Name%></label>
                            <asp:TextBox runat="server" ID="txtName" CssClass="txtbox ReqValidation"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_4_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Mobile%></label>
                            <asp:TextBox runat="server" ID="txtMobile" CssClass="txtbox ReqValidation"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_4_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Email%></label>
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="txtbox emailValidation ReqValidation"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group ">
                            <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Type_Of_Problem%><i class="fa fa-arrow-down f-right"></i></h4>
                        </div>
                    </div>
                    <div class="col col_6_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Type_Of_Problem%></label>
                            <asp:DropDownList ID="ddlTypeOfProblem" runat="server" CssClass="ddl">
                                <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, No_Coverage%>"></asp:ListItem>
                                <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Connection_Error%>"></asp:ListItem>
                                <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Interference_In_calls%>"></asp:ListItem>
                                <asp:ListItem Value="4" Text="<%$ Resources:SITE_Resource, Noise_During_Call%>"></asp:ListItem>
                                <asp:ListItem Value="5" Text="<%$ Resources:SITE_Resource, Disconnection_Of_The_Call%>"></asp:ListItem>
                                <asp:ListItem Value="6" Text="<%$ Resources:SITE_Resource, Network_Busy%>"></asp:ListItem>
                                <asp:ListItem Value="7" Text="<%$ Resources:SITE_Resource, During_The_Call_I_Do_Not_Hear_A_Voice%>"></asp:ListItem>
                                <asp:ListItem Value="8" Text="<%$ Resources:SITE_Resource, I_Hear_A_Voice_Echo%>"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col col_6_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Type_Of_Coverage%></label>
                            <asp:DropDownList ID="ddlTypeOfCoverage" runat="server" CssClass="ddl">
                                <asp:ListItem Value="1" Text="<%$ Resources:SITE_Resource, Second_generation%>"></asp:ListItem>
                                <asp:ListItem Value="2" Text="<%$ Resources:SITE_Resource, Third_generation%>"></asp:ListItem>
                                <asp:ListItem Value="3" Text="<%$ Resources:SITE_Resource, Dont_Know%>"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group ">
                            <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Coverage_Feedback%><i class="fa fa-arrow-down f-right"></i></h4>
                        </div>
                    </div>
                    <div class="col col_3_of_12">
                        <div class="form_group ">
                            <label class="label-req"><%= Resources.SITE_Resource.Date_Of_Problem%></label>
                            <asp:TextBox runat="server" ID="txtDateOfProblem" CssClass="txtbox ReqValidation DateValidation Datepicker"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group f-p-17-0">
                            <label class="label-req"><%= Resources.SITE_Resource.Time_Of_Problem%></label>
                            <asp:CheckBox ID="cbIsTimeMorning" runat="server" Text="<%$ Resources:SITE_Resource, TimeMorning%>" />
                            <asp:CheckBox ID="cbIsTimeAfternoon" runat="server" Text="<%$ Resources:SITE_Resource, TimeAfternoon%>" />
                            <asp:CheckBox ID="cbIsTimeEvening" runat="server" Text="<%$ Resources:SITE_Resource, TimeEvening%>" />
                            <asp:CheckBox ID="cbIsTimeNight" runat="server" Text="<%$ Resources:SITE_Resource, TimeNight%>" />
                            <asp:CheckBox ID="cbIsTimeContinuously" runat="server" Text="<%$ Resources:SITE_Resource, TimeContinuously%>" />
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group f-p-17-0">
                            <label class="label-req"><%= Resources.SITE_Resource.InsideOutsideBuilding%></label>
                            <asp:RadioButton ID="rbInsideBuilding" runat="server" Text="<%$ Resources:SITE_Resource, InsideBuilding%>" Checked="true" GroupName="gnInsideOutsideBuilding" />
                            <asp:RadioButton ID="rbOutsideBuilding" runat="server" Text="<%$ Resources:SITE_Resource, OutsideBuilding%>" GroupName="gnInsideOutsideBuilding" />
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group ">
                            <h4 class="label-req h-sub-title"><%= Resources.SITE_Resource.Notes%><i class="fa fa-arrow-down f-right"></i></h4>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group ">
                            <asp:TextBox runat="server" ID="txtNotes" CssClass="txtbox"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col col_12_of_12">
                        <div class="form_group">
                            <asp:Button runat="server" ID="btnSubmit" CssClass="btn" Text="<%$ Resources:SITE_Resource, Submit_Form%>" OnClientClick="CheckValidation()" OnClick="btnSubmit_Click" />
                        </div>
                    </div>


                        </ContentTemplate>
                    </asp:UpdatePanel>


                </div>
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

