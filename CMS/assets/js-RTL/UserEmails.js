
////////////////////////////////////// To Appear Loading Div when Email Sending
function HideDiv_LoadingPage() {
    $('.Div_LoadingPage_Outer').hide();
    $('body').css("overflow", "initial");
}
function ShowDiv_LoadingPage() {
    window.scrollTo(0, 0);
    $('.Div_LoadingPage_Outer').show();
    $('body').css("overflow", "hidden");
    $('.btnScriptAdd').click();
}
function ShowDiv_LoadingPage2() {
    window.scrollTo(0, 0);
    $('.Div_LoadingPage_Outer').show();
    $('body').css("overflow", "hidden");
    $('.btnScriptEdit').click();
}
function ShowDiv_LoadingPage3() {
    window.scrollTo(0, 0);
    $('.Div_LoadingPage_Outer').show();
    $('body').css("overflow", "hidden");
    $('.btnScriptUndelete').click();
}