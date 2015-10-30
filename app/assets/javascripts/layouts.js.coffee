# $(document).ready ()->
#   $(".menu-toggle-btn").click ()->
#     $(".menu").fadeToggle(1000)

toggleMenu = ()->
  $(".menu").fadeToggle(1000)

window.toggleMenu = toggleMenu
