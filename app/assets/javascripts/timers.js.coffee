(($) ->
  # https://github.com/robcowie/jquery-stopwatch
  roundNumber = (num, dec) ->
  	Math.round(num*Math.pow(10,dec))/Math.pow(10,dec);

  incrementer = (ct, increment) ->
    ->
      ct += increment
      
      
  pad2 = (number) ->
    (if number < 10 then "0" else "") + number

  defaultFormatMilliseconds = (millis) ->
    dec = millis / 100
    x = millis / 1000
    tenths = Math.floor(dec % 10)
    seconds = Math.floor(x % 60)
    x /= 60
    minutes = Math.floor(x % 60)
    x /= 60
    hours = Math.floor(x % 24)
    [([ pad2(minutes), pad2(seconds) ].join(":")), tenths].join('.')
    # [ pad2(hours), pad2(minutes), pad2(seconds) ].join ":"

  formatMilliseconds = (millis, data) ->
    if typeof jintervals is "function"
      formatter = (millis, data) ->
        jintervals millis / 1000, data.format
    else
      formatter = defaultFormatMilliseconds
    formatMilliseconds = (millis, data) ->
      formatter millis, data
    formatMilliseconds millis, data

  methods = 
    init: (options) ->
      defaults =
        updateInterval: 100# 0
        startTime: 0
        format: "{MM}:{SS}"
        # format: "{HH}:{MM}:{SS}"
        formatter: formatMilliseconds

      settings = $.extend({}, defaults, options)

      @each ->
        $this = $(this)
        data = $this.data("stopwatch")
        unless data
          data = settings
          data.active = false
          data.target = $this
          data.elapsed = settings.startTime
          data.incrementer = incrementer(data.startTime, data.updateInterval)
          data.tick_function = ->
            millis = data.incrementer()
            data.elapsed = millis
            data.target.trigger "tick.stopwatch", [ millis ]
            data.target.stopwatch "render"

          $this.data "stopwatch", data

    start: ->
      @each ->
        $this = $(this)
        data = $this.data("stopwatch")
        data.active = true
        data.timerID = setInterval(data.tick_function, data.updateInterval)
        $this.data "stopwatch", data

    stop: ->
      @each ->
        $this = $(this)
        data = $this.data("stopwatch")
        clearInterval data.timerID
        data.active = false
        $this.data "stopwatch", data

    destroy: -> 
      @each ->
        $this = $(this)
        data = $this.data("stopwatch")
        $this.stopwatch("stop").unbind(".stopwatch").removeData "stopwatch"

    render: ->
      $this = $(this)
      data = $this.data("stopwatch")
      $this.html data.formatter(data.elapsed, data)

    getTime: ->
      $this = $(this)
      data = $this.data("stopwatch")
      data.elapsed

    toggle: ->
      @each ->
        $this = $(this)
        data = $this.data("stopwatch")
        if data.active
          $this.stopwatch "stop"
          # $this.stopwatch "recordLap"
        else
          $this.stopwatch "start"

    reset: ->
      @each ->
        $this = $(this)
        data = $this.data("stopwatch")
        data.incrementer = incrementer(data.startTime, data.updateInterval)
        data.elapsed = data.startTime
        $this.data "stopwatch", data
    
    # recordLap: ->
      # add a "Lap x" label and the corresponding time to a text field

        # init, start, stop, destroy, render, getTime, toggle, reset				

  $.fn.stopwatch = (method) ->
    if methods[method]
      methods[method].apply this, Array::slice.call(arguments, 1)
    else if typeof method is "object" or not method
      methods.init.apply this, arguments
    else
      $.error "Method " + method + " does not exist on jQuery.stopwatch"
      
  $.fn.getTimeString = (sec) ->
    defaultFormatMilliseconds sec * 1000
        	
) jQuery

jQuery ->	
	lapHtml = (lapCount) ->
	  li = "<div><li>Lap #{lapCount}</li>"
	  idAndName = "id='lap_#{lapCount}' name='lap[#{lapCount}]'"
	  lapTimeHtml = "<input class='lap_time' #{idAndName} type='text' value='#{lapTime(lapCount)}'>"
	  li + lapTimeHtml + '</div>'
	  
	lapTime = (lapCount) -> 
	  currentTimeArray = $('#stopwatch').html().split(':') 
	  newLapSec = getSeconds(currentTimeArray) - parseFloat($("#current_lap_start_time").val())
	  $("#current_lap_start_time").val(parseFloat($("#current_lap_start_time").val()) + newLapSec)
	  getTimeString(newLapSec * 1000)
	  
	getSeconds = (timeArray) ->
	  counter = 0
	  timeArray.forEach (digits, i) ->
	    counter += parseFloat(digits) * [60, 1][i]
	  counter

  getTimeString = (millis) ->
    dec = millis / 100
    x = millis / 1000
    tenths = Math.floor(dec % 10)
    seconds = Math.floor(x % 60)
    x /= 60
    minutes = Math.floor(x % 60)
    x /= 60
    hours = Math.floor(x % 24)
    [([ pad2(minutes), pad2(seconds) ].join(":")), tenths].join('.')

  pad2 = (number) ->
    (if number < 10 then "0" else "") + number

  $('#save').click ->
    $('#record_laps').click()
    
  $('#start').click ->
    $('#stopwatch').stopwatch().stopwatch('start')
    $('.button.hidden').show()
    $('#start').hide()
    $('#stopwatch').addClass('large')
    
  $('#lap_split').click ->
    lapCount = parseInt($('#lap_count').val()) + 1
    $('#lap_count').val(lapCount)                 
    $('.laps').append(lapHtml(lapCount))
	    












