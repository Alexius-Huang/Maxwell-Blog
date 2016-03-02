$(document).on "page:change", ->
	$("#comment-link").click (event) ->
		event.preventDefault()
		$("#comment-section").slideDown("slow")
		$("#comment_content").focus()