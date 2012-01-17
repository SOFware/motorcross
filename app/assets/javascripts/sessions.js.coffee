jQuery ->	
	
	for grouping in ['circumstances', 'tires', 'gearing', 'suspension']
		do (grouping) ->
			$('#'+grouping).click ->
				$('.options').hide()
				$('.active').toggleClass('active inactive')
				$(this).parent().toggleClass('active inactive')				
				$('.'+grouping).show()
			
