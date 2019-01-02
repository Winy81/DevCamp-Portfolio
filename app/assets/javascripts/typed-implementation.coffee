ready = ->
  Typed.new '.element',
    strings: [
      'I would like to give you a warm welcome to my new site!'
      "This website is just a quick example of my work and some of the jobs I have undertaken."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready