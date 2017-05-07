$(document).on "turbolinks:load", -> # On turbolink load
	$("#new_message").on "keypress", (e) -> # Target new_message form
		if e && e.keyCode == 13 # If enter key is pressed
			e.preventDefault() # Prevent default link behavior
			$(this).submit() # Submit form