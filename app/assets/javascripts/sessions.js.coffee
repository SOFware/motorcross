jQuery ->	

# show/hide options based on nav menu
	for grouping in ['circumstances', 'tires', 'gearing', 'suspension', 'shock', 'fork']
		do (grouping) ->
			$('#'+grouping).click ->
				$('.options').hide()
				$('.active').toggleClass('active inactive')
				$(this).parent().toggleClass('active inactive')				
				$('.'+grouping).show()
				$("#option").val(grouping)
				# currentHref = $('th.arrow a:first').attr('href')
				# 				currentOption = currentHref.match(option=[*])
				# 				
				$('#gearing_table th.arrow a').each (index, link) ->
					initialHref = $(link).attr('href')
					$(link).attr('href', "#{intialHref}&option=#{grouping}" )
			

# Dynamic menu for track based on event (and thus venue)
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
			
			
# tablesorter
	# $('#sessionsTable').tablesorter( {sortList: [[0,0], [1,0]]} )
#arrow for sortable columns
	# $('.asc').parent().append('<div class="up"><div>')
	# $('.desc').parent().append('<div class="down"><div>')
		
# keep the current option selected when sorting by column
	option = $("#option").val()
	$('#'+option).click()