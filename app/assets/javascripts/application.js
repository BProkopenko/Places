//= require jquery
//= require jquery_ujs
//= require masonry/jquery.masonry
//= require masonry/jquery.event-drag
//= require masonry/jquery.imagesloaded.min
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions
//= require masonry/box-maker
//= require masonry/jquery.loremimages.min
//= require isotope/jquery.isotope
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets
$('.show-places-form').click(function () {
    var form_id = $('#' + $(this).attr("rel"));
    $(form_id).show();
    $('.place-form').show();

})
$('.close-form').click(function () {
    $('.place-form, #background-places_form').hide();

})


$('.show-sign-in-form').click(function () {
    var form_id = $('#' + $(this).attr("rel"));
    $(form_id).show();
    $('.sign-in-form').show();

})
$('.close-form').click(function () {
    $('.sign-in-form, #background-places_form').hide();
})