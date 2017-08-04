# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', -> 
	$('#new-movie-modal-button').click ->
		$('#new-movie-modal').modal('open')
		console.log("Clicked modal button")

	$('#create-movie-button').click ->
		$('form').trigger('submit.rails')