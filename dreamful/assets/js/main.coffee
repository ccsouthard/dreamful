$body = $('body')
$content = $('.content-block')
current_page = 'landing'

load_template = (name) ->
  $content.html(
    templates[name]()
  )

  $body.removeClass(current_page)
  $body.addClass(name)
  current_page = name
  load_anchors()

load_anchors = ->
  $('a').on 'click', (e) ->
    if e.preventDefault
      e.preventDefault()
    load_template $(this).attr('href').slice(1)

# Setup device
on_ready = () ->
  Origami.fastclick(document.body);
  load_anchors()

document.addEventListener('deviceready', on_ready, false)