$(document).on "page:change", ->
	$("#ajax-btn-1").click (event) ->
		event.preventDefault()
		$("#CS-1").slideToggle("slow")

	$("#ajax-btn-2").click (event) ->
		event.preventDefault()
		$("#CS-2").slideToggle("slow")

	$("#ajax-btn-3").click (event) ->
		event.preventDefault()
		$("#CS-3").slideToggle("slow")

	$("#ajax-btn-4").click (event) ->
		event.preventDefault()
		$("#CS-4").slideToggle("slow")

	$("#ajax-btn-5").click (event) ->
		event.preventDefault()
		$("#CS-5").slideToggle("slow")
