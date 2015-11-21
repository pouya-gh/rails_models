# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".new_post").on("ajax:success", (e, data, status, xhr) ->
    # $("#new_article").append xhr.responseText
    window.location.href = "/"
  ).on "ajax:error", (e, xhr, status, error) ->
    # $("#new_article").append "<p>ERROR</p>"
    location.reload()

  $(".edit_post").on("ajax:success", (e, data, status, xhr) ->
    # $("#new_article").append xhr.responseText
    window.location.href = "/"
  ).on "ajax:error", (e, xhr, status, error) ->
    # $("#new_article").append "<p>ERROR</p>"
    location.reload()
