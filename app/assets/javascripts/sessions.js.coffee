jQuery ->	

# show/hide options based on nav menu
	for grouping in ['circumstances', 'tires', 'gearing', 'suspension', 'shock', 'fork']
		do (grouping) ->
			$('#'+grouping).click ->
				$('.options').hide()
				$('.active').toggleClass('active inactive')
				$(this).parent().toggleClass('active inactive')				
				$('.'+grouping).show()

# Dynamic menu for track based on event (and thus venue)
	tracks = $('#session_track_id').html()
	$('#session_track_id').parent().hide()
	$('#session_venue_id').change ->
		venue = $('#session_venue_id :selected').text()
		options = $(tracks).filter("optgroup[label='#{venue}']").html()
		if options
			$('#session_track_id').html(options)
			$('#session_track_id').parent().show()			
		else
			$('#session_track_id').parent().hide()			
			$('#session_track_id').empty()			
			
			
# tablesorter
	$('#sessionsTable').tablesorter( {
		sortList: [[0,0], [1,0]],
		debug: true
		} )
		
# keep the current option selected when sorting by column
	option = $("#option").val()
	$('#'+option).click()