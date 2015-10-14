# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#booksTable').dataTable( 'columnDefs': [{ 
  'orderable': false
  'targets': [0, 4, 5, 6]
  }])

$(document).ready ->
  $('#editionsTable').dataTable( 'columnDefs': [{ 
  'orderable': false
  'targets': [2, 3]
  }])