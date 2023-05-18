/// Verb for opening the requests manager panel
/client/proc/requests()
	set name = "Requests Manager"
	set desc = "Open the request manager panel to view all requests during this round"
	set category = "Admin.Game"

	if(!check_rights(R_ADMIN))
		return

	BLACKBOX_LOG_ADMIN_VERB("Request Manager")
	GLOB.requests.ui_interact(usr)
