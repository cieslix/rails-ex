# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $gomokuData = $('#gomoku_data')
  $gomokuData.on 'change', () ->
    data = {id: $gomokuData.data('id'), data: $gomokuData.val(), className: 'Gomoku', target: '#gomoku_data'}
    App.chat.communicate(data)
