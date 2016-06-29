# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#stage').owlCarousel
    items: 4
    lazyLoad: true
    navigation: false
    singleItem: true
    slideSpeed: 30
    paginationSpeed: 400
  $('.card-deck').owlCarousel
    items: 4
    lazyLoad: true
    navigation: false
    slideSpeed: 300
    paginationSpeed: 400
  return
