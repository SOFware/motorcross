# jQuery.ajaxSetup( ->
# 	"beforeSend": (xhr) -> xhr.setRequestHeader("Accept", "text/javascript")

# jQuery.ajaxSetup(
# 	"beforeSend": (xhr) ->
# 		xhr.setRequestHeader("Accept", "text/javascript")
# )

app = 
	updateIndexList: (attr) ->
		$(attr).submit ->
			$.ajax
				url: $(this).attr("action")
				type: 'POST'
				dataType: 'html'
				data: $(this).serialize()
				success: (response) ->
					$("input[type='text']").val('')
					$('.index_list table').replaceWith(response)
					$(".focus_here").focus()	
			false		



jQuery ->
	$(".focus_here").focus()

	controllers = ['bike', 'venue', 'tire', 'track_type', 'racing_series']
	app.updateIndexList("#new_"+controller) for controller in controllers
	
	

	