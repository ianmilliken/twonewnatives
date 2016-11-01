$(document).ready ->

  hamburger = $('.site-nav__hamburger')
  overlay = $('.site-overlay')
  drawer = $('.site-drawer')
  close = $('.site-drawer__close')

  add_classes = ->
    overlay.addClass( 'site-overlay--active' )
    drawer.addClass( 'site-drawer--active' )

  remove_classes = ->
    overlay.removeClass( 'site-overlay--active' )
    drawer.removeClass( 'site-drawer--active' )

  hamburger.off()
  hamburger.on 'click', (event) ->
    event.preventDefault()
    add_classes()

  close.off()
  close.on 'click', (event) ->
    event.preventDefault()
    remove_classes()
