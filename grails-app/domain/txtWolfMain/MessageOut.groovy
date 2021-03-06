package txtWolfMain

import java.util.ArrayList;

class MessageOut {
	
	String title
	String message
	String recipients // Delimit by comma
	Date lastSentDate
	
	// Creds yo
	String userID
	String messageID
	String recipientsParsed
	
	int contactCount
	
	boolean recurring
	boolean scheduled 
	
	// Single sent time
	Date scheduleTime

    static constraints = {
		message(maxSize: 2000) // Max from sms service is 1600
		scheduleTime(nullable:true)	
		contactCount(nullable:true)	
		recipientsParsed(nullable:true)
    }
}
