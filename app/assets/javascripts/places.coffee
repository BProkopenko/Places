$('.show-places-form').click ->
  form_id = $('#' + $(this).attr('rel'))
  $(form_id).show()
  $('.place-form').show()
  return
$('.close-form').click ->
  $('.place-form, #background-places_form').hide()
  return

$('.show-sign-in-form').click ->
  form_id = $('#' + $(this).attr('rel'))
  $(form_id).show()
  $('.sign-in-form').show()
  return
$('.close-form').click ->
  $('.sign-in-form, #background-places_form').hide()
  return


$('.show-login-form').click ->
  form_id = $('#' + $(this).attr('rel'))
  $(form_id).show()
  $('.login_form').show()
  return
$('.close-form').click ->
  $('.register_form, #background-places_form').hide()
  return