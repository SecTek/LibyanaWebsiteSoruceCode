//head.js("../assets/js/skin-select/jquery.cookie.js");
head.js("../assets/js-RTL/skin-select/skin-select.js");

//Showing Date
head.js("../assets/js-RTL/clock/date.js");

//Bootstrap
//head.js("../assets/js/bootstrap.js");

//------------------------------------------------------------- 

//SEARCH MENU
head.js("../assets/js-RTL/search/jquery.quicksearch.js", function () {
    $('input.id_search').quicksearch('.Custom_Menu ul, .menu-left-nest li ul');
});
//-------------------------------------------------------------

//Acordion and Sliding menu

head.js("../assets/js-RTL/custom/scriptbreaker-multiple-accordion-1.js", function () {

    $(".topnav").accordionze({
        accordionze: true,
        speed: 500,
        closedSign: '<img src="../assets/img/plus.png">',
        openedSign: '<img src="../assets/img/minus.png">'
    });

});

//Right Sliding menu


$(document).ready(function () {
    var mySlidebars = new $.slidebars();
    $('.toggle-left').on('click', function () {
        mySlidebars.toggle('left');
    });
});


//-------------------------------------------------------------
//TOOL TIP

head.js("../assets/js-RTL/tip/jquery.tooltipster.js", function () {

    $('.tooltip-tip-x').tooltipster({
        position: 'left'
    });

    $('.tooltip-tip').tooltipster({
        position: 'left',
        animation: 'slide',
        theme: '.tooltipster-shadow',
        delay: 1,
        offsetX: '-2px',
        onlyOne: true
    });
    $('.tooltip-tip2').tooltipster({
        position: 'left',
        animation: 'slide',
        offsetX: '-2px',
        theme: '.tooltipster-shadow',
        onlyOne: true
    });
    $('.tooltip-top').tooltipster({
        position: 'top'
    });
    $('.tooltip-left').tooltipster({
        position: 'left'
    });
    $('.tooltip-right').tooltipster({
        position: 'right'
    });
    $('.tooltip-bottom').tooltipster({
        position: 'bottom'
    });
    $('.tooltip-reload').tooltipster({
        position: 'left',
        theme: '.tooltipster-white',
        animation: 'fade'
    });
    $('.tooltip-fullscreen').tooltipster({
        position: 'left',
        theme: '.tooltipster-white',
        animation: 'fade'
    });
});
//------------------------------------------------------------- 
//PAGE LOADER
head.js("../assets/js-RTL/pace/pace.js", function () {

    paceOptions = {
        ajax: false, // disabled
        document: false, // disabled
        eventLag: false, // disabled
        elements: {
            selectors: ['.my-page']
        }
    };
});
//------------------------------------------------------------- 
//DIGITAL CLOCK
head.js("../assets/js-RTL/clock/jquery.clock.js", function () {
    $('#digital-clock').clock({
        offset: '+2',
        type: 'digital'
    });
});



//------------------------------------------------------------------------------------------------------------------ 
//------------------------------------------------------------------------------------------------------------------ 
//--------------------------------------------  Site Javascripts  -------------------------------------------------- 
//------------------------------------------------------------------------------------------------------------------ 
//------------------------------------------------------------------------------------------------------------------ 



function pageLoad() {
    ////////////////////////////////////// FOR CONTENT PAGE NAME
    $('.txtTitle').on('keyup', function () {
        $('.txtPageName').val($(this).val().split(' ').join('_'));
    });
    ////////////////////////////////////// For Date Picker
    $('.DatePicker').datepicker({
        format: 'dd/mm/yyyy',
        orientation: "top right"
    })

    var dt = new Date();


    $('.TimePicker').clockface({ format: 'h:mm' });
    ////////////////////////////////////// For Tables
    $('.footable-res').footable();

    ////////////////////////////////////// For Checkbox
    $('.skin-flat input').iCheck({
        checkboxClass: 'icheckbox_flat-red',
        radioClass: 'iradio_flat-red'
    });
    $('.skin-line input').each(function () {
        var self = $(this),
            label = self.next(),
            label_text = label.text();
        label.remove();
        self.iCheck({
            checkboxClass: 'icheckbox_line-blue',
            radioClass: 'iradio_line-blue',
            insert: '<div class="icheck_line-icon"></div>' + label_text
        });
    });
    $('.skin-flat input').each(function () {
        $onclick = $(this).attr("onclick");
        $iCheckName = $(this).attr("name");
        $buttonTrigger = 'input[name="' + $iCheckName + '"';
        var $this = $(this);
        if ($onclick != undefined) {
            if ($onclick.length > 0) {
                $($buttonTrigger).on('ifChecked', function (event) {
                    $(this).trigger("click");
                });
            }
        }
    });
}

////////////////////////////////////// For Tables
$(function () {
    $('#gvData').footable().bind('footable_filtering', function (e) {
        var selected = $('.filter-status').find(':selected').text();
        if (selected && selected.length > 0) {
            e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
            e.clear = !e.filter;
        }
    });
    $('.clear-filter').click(function (e) {
        e.preventDefault();
        $('.filter-status').val('');
        $('table.gvDataClass').trigger('footable_clear_filter');
    });

    $('.filter-status').change(function (e) {
        e.preventDefault();
        $('table.gvDataClass').trigger('footable_filter', {
            filter: $('#filter').val()
        });
    });
});

//////////////////////////////////////For Tabs
$(function () {
    $(".wizard-tab").steps({
        headerTag: "h2",
        bodyTag: "section",
        transitionEffect: "none",
        enableFinishButton: false,
        enablePagination: false,
        enableAllSteps: true,
        titleTemplate: "#title#",
        cssClass: "tabcontrol"
    });
});

//////////////////////////////////////For MSG Box
function MsgAlert(Msg_Text, Msg_Type) {
    var _autoHide = true;
    var _clickOverlay = false;
    var _MinWidth = 250;
    var _TimeShown = 3000;
    var _ShowTimeEffect = 200;
    var _HideTimeEffect = 200;
    var _LongTrip = 20;
    var _HorizontalPosition = 'center';
    var _VerticalPosition = 'top';
    var _ShowOverlay = true;
    var _ColorOverlay = '#000';
    var _OpacityOverlay = 0.8;
    if (Msg_Type == "Info") {
        _jNotify(Msg_Text);
    }
    if (Msg_Type == "Error") {
        _jError(Msg_Text);
    }
    if (Msg_Type == "Success") {
        _jSuccess(Msg_Text);
    }
    function _jNotify(Msg_Text) {
        jNotify(
     Msg_Text,
     {
         autoHide: _autoHide,
         clickOverlay: _clickOverlay,
         MinWidth: _MinWidth,
         TimeShown: _TimeShown,
         ShowTimeEffect: _ShowTimeEffect,
         HideTimeEffect: _HideTimeEffect,
         LongTrip: _LongTrip,
         HorizontalPosition: _HorizontalPosition,
         VerticalPosition: _VerticalPosition,
         ShowOverlay: _ShowOverlay,
         ColorOverlay: _ColorOverlay,
         OpacityOverlay: _OpacityOverlay,
         onClosed: function () { // added in v2.0
         },
         onCompleted: function () { // added in v2.0
         }
     });
    }
    function _jError(Msg_Text) {
        jError(
     Msg_Text,
     {
         autoHide: _autoHide,
         clickOverlay: _clickOverlay,
         MinWidth: _MinWidth,
         TimeShown: _TimeShown,
         ShowTimeEffect: _ShowTimeEffect,
         HideTimeEffect: _HideTimeEffect,
         LongTrip: _LongTrip,
         HorizontalPosition: _HorizontalPosition,
         VerticalPosition: _VerticalPosition,
         ShowOverlay: _ShowOverlay,
         ColorOverlay: _ColorOverlay,
         OpacityOverlay: _OpacityOverlay,
         onClosed: function () { // added in v2.0
         },
         onCompleted: function () { // added in v2.0
         }
     });
    }
    function _jSuccess(Msg_Text) {
        jSuccess(
     Msg_Text,
     {
         autoHide: _autoHide,
         clickOverlay: _clickOverlay,
         MinWidth: _MinWidth,
         TimeShown: _TimeShown,
         ShowTimeEffect: _ShowTimeEffect,
         HideTimeEffect: _HideTimeEffect,
         LongTrip: _LongTrip,
         HorizontalPosition: _HorizontalPosition,
         VerticalPosition: _VerticalPosition,
         ShowOverlay: _ShowOverlay,
         ColorOverlay: _ColorOverlay,
         OpacityOverlay: _OpacityOverlay,
         onClosed: function () { // added in v2.0
         },
         onCompleted: function () { // added in v2.0
         }
     });
    }
}

////////////////////////////////////// For Hidding ddl when scroll
$(window).scroll(function () {
    $(".rddlSlide").css("display", "none");
});
////////////////////////////////////// For remove validations on postbacks
function RemoveValidationForFileUploader() {
    $('.ReqValidation').removeAttr('required');
    $('.NumberValidation').removeAttr('type');
    $('.emailValidation').removeAttr('type');
    $('.DateValidation').removeAttr('pattern');
    $('.12_Digit').removeAttr('pattern');

}
////////////////////////////////////// CheckUpdateValidation
function CheckValidation() {
    $(".UnderValidationSection").each(function (index) {
        if ($(this).attr('aria-hidden') == "false") {
            $('.ReqValidation', this).attr('required', 'required');
            $('.NumberValidation', this).attr('type', 'number');
            $('.emailValidation', this).attr('type', 'email');
            $('.DateValidation', this).attr('pattern', '^([0-9]{2})/([0-9]{2})/([0-9]{4})$');
            $('.12_Digit', this).attr('pattern', '^([0-9]{12})$');

            $('.ReqValidation', this).attr('oninvalid', 'InvalidMsg(this,"Required")');
            $('.NumberValidation', this).attr('oninvalid', 'InvalidMsg(this,"Number")');
            $('.emailValidation', this).attr('oninvalid', 'InvalidMsg(this,"Email")');
            $('.DateValidation', this).attr('oninvalid', 'InvalidMsg(this,"Date")');
            $('.12_Digit', this).attr('oninvalid', 'InvalidMsg(this,"12_Digit")');
        } else {
            $('.ReqValidation', this).removeAttr('required');
            $('.NumberValidation', this).removeAttr('type');
            $('.emailValidation', this).removeAttr('email');
            $('.DateValidation').removeAttr('pattern');
            $('.12_Digit').removeAttr('pattern');

            $('.ReqValidation', this).removeAttr('oninvalid');
            $('.NumberValidation', this).removeAttr('oninvalid');
            $('.emailValidation', this).removeAttr('oninvalid');
            $('.DateValidation').removeAttr('oninvalid');
            $('.12_Digit').removeAttr('oninvalid');
        }
    });
}
////////////////////////////////////// Search Txtboxes when press Enter key
$('body').keypress(function (event) {
    if (event.keyCode == 10 || event.keyCode == 13)
        event.preventDefault();
});
////////////////////////////////////// Tracking Video Popup
function PopUpVideo() {
    $(".PopUpVideo_Button").colorbox({ iframe: true, innerWidth: 640, innerHeight: 360 });
}

////////////////////////////////////// Tracking Images Popup
function ImagePopup() {
    $('.ImagePopup').colorbox({ });
}

////////////////////////////////////// To Get validation msgs
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

