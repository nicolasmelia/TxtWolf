package textnotesv1

class DashboardController {

    def index() { 
		dashboard()
	}
	
	def dashboard() {	
		if (request.getCookie('user') && !session["userID"]) {
			createSession(request.getCookie('user').toString())
			render(view:"dashboard_home")	
		} else if (session["userID"]) {
			render(view:"dashboard_home")	
		} else {
			redirect(controller: "Login")
		}
	}
	
	
	def sendTxt() {
		if (request.getCookie('user') && !session["userID"]) {
			createSession(request.getCookie('user').toString())
			render(view:"dashboard_SendTxt")
		} else if (session["userID"]) {
			render(view:"dashboard_SendTxt")
		} else {
			redirect(controller: "Login")
		}
	}
	
	def proccessTxtSend() {
		render params.tags
	}
	
	def getUserContent(String userID, String requestType) {
		//ArrayList<Messages> messages =  new ArrayList<Messages>()
		def messages		
		switch (requestType) {
			case "All":
				messages = Messages.executeQuery("FROM Messages m WHERE m.userID = ? AND m.deleted = false ORDER BY date DESC)", [userID], [max: 15])
				break;
			case "Notes":
				messages = Messages.executeQuery("FROM Messages m WHERE m.userID = ? AND m.messageType = ? AND m.deleted = false ORDER BY date DESC)", [userID, "Note"], [max: 15])
				break;
		}
		return messages	
	}
	
	def deleteNote() {
		Messages message = Messages.findByMessageID(params.messageID)
		if (message.userID.toString().equals(session["userID"])) {
			message.deleted = true
			message.save(flush:true)
			render("True")
		} else {
			render("False")		
		}	
	}
	
	def createSession(String userID) {
		// Creates a session if one does not exist
		if (!session["userID"]) {
			User user = User.findByUserID = userID
			session["userID"] = user.userID
			session["firstName"] = user.firstName
			session["lastName"] = user.lastName
			return true
		} else {
			return false
		}	
	}
	
}
