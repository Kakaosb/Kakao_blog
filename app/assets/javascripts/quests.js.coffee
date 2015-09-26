# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#quest_potterr').change ->
 
    potterr_id = $('#quest_potterr').val()
    pwheels_path = $('#quest_pwheel_id').data('ajax-path')
    pwheels_path_with_params = "#{pwheels_path}?potterr_id=#{potterr_id}"

    if potterr_id
      $.ajax pwheels_path_with_params,
        type: 'GET'
        dataType: 'script'