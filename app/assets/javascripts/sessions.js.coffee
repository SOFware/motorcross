jQuery ->
	
	
	$('#circumstances').click ->
		$('.options').hide()
		$('.circumstances').show()
		$('.active').addClass('inactive')
		$('.active').removeClass('active')
		$('#menu_circ').addClass('active')
		$('#menu_circ').removeClass('inactive')

	$('#tires').click ->
		$('.options').hide()
		$('.tires').show()
		$('.active').addClass('inactive')
		$('.active').removeClass('active')
		$('#menu_tire').addClass('active')
		$('#menu_tire').removeClass('inactive')
	
	$('#gears').click ->
		$('.options').hide()
		$('.gearing').show()
		$('.active').addClass('inactive')
		$('.active').removeClass('active')
		$('#menu_gear').addClass('active')
		$('#menu_gear').removeClass('inactive')
	
	$('#suspension').click ->
		$('.options').hide()
		$('.suspension').show()
		$('.active').addClass('inactive')
		$('.active').removeClass('active')
		$('#menu_suspension').addClass('active')
		$('#menu_suspension').removeClass('inactive')
	
