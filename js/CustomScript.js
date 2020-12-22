$(window).on('load', function () {
    handlePreloader();
});
function handlePreloader() {
    if ($('.preloader').length) {
        $('.preloader').delay(500).fadeOut(500);
    }
}

//jQuery('#camera_wrap_4').camera({
//    height: '34%',
//    loader: '',
//    pagination: true,
//    thumbnails: false,
//    navigation: true,
//    overlayer: false,
//    hover: false,
//    opacityOnGrid: false,
//    fx: 'scrollLeft',

//});


$("#featured-offer").owlCarousel({
    navigation: true,
    pagination: false,
    autoPlay: true,
    stopOnHover: true,
    items: 3,
    itemsDesktop: [1199, 3],
    itemsDesktopSmall: [979, 2],
    itemsTablet: [768, 2],
    itemsTabletSmall: [540, 1],
    itemsMobile: [360, 1],
    scrollPerPage: true,
    navigationText: ['<span class="product-previous" title="Previous"></span>', '<span class="product-next" title="Next"></span>'],
});

$("#home-service").owlCarousel({
    navigation: true,
    pagination: false,
    autoPlay: true,
    stopOnHover: true,
    items: 4,
    itemsDesktop: [1199, 4],
    itemsDesktopSmall: [979, 2],
    itemsTablet: [768, 2],
    itemsTabletSmall: [540, 1],
    itemsMobile: [360, 1],
    scrollPerPage: true,
    navigationText: ['<span class="product-previous" title="Previous"></span>', '<span class="product-next" title="Next"></span>'],
});



function RemoveValidation() {
    $('.ReqValidation').removeAttr('required');
    $('.NumberValidation').removeAttr('required');
    $('.emailValidation').removeAttr('required');
    $('.DateValidation').removeAttr('required');
}

//-----------------Run After Postback----------------------------------
var parameter = Sys.WebForms.PageRequestManager.getInstance();
parameter.add_endRequest(function () {
    $(function () {
        $("#accordion").accordion();
    });


});
$(document).ready(function () {
    $(".title-toggle").click(function () {
        $(this).next('.career-body-toggle').toggle("slow");
    });

})
