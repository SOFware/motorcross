jQuery ->	
	
	for grouping in ['circumstances', 'tires', 'gearing', 'suspension']
		do (grouping) ->
			$('#'+grouping).click ->
				$('.options').hide()
				$('.active').toggleClass('active inactive')
				$(this).parent().toggleClass('active inactive')				
				$('.'+grouping).show()
			
	tracks = $('#session_track_id').html()
	$('#session_track_id').parent().hide()
	$('#session_event_id').change ->
		event = $('#session_event_id :selected').text()
		venue = window.venue_hash[event]
		options = $(tracks).filter("optgroup[label='#{venue}']").html()
		if options
			$('#session_track_id').html(options)
			$('#session_track_id').parent().show()			
		else
			$('#session_track_id').parent().hide()			
			$('#session_track_id').empty()			