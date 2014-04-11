$ ->
  lr = document.createElement('script')
  lr.src = "http://#{location.hostname}:35729/livereload.js?snipver=1"
  s = document.getElementsByTagName('script')[0]
  s.parentNode.insertBefore(lr, s)

  console.log('ready')
