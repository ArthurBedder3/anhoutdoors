package app

import java.util.Date;

class Activity {
	Date hikeDate
	String activityType 
	String shortDescription
	BigDecimal Fee
	String specialEquipment
	Date registrationDate
	String fullDescription
	String statusType
	Date dateCreated
	Date lastUpdated

    static constraints = {
		hikeDate(nullable:false)
		activityType(nullable:false, 
			inList:["Day Hike","Night Hike","Yoga Hike","Camping","Rafting",
				"Wayne Navigation","Wayne Harriman","Wayne Highlands",
				"Ridgewood Walks", "Ridgewood Hikes", "Ridgewood Navigation"])
		shortDescription(nullable:false)
		Fee(nullable:false)
		specialEquipment(nullable:true)
		registrationDate(nullable:false)
		fullDescription(nullable:false, maxSize:2000)
		statusType(nullable:false, 
			inList:["Class","Scheduled","Planned","No Shows","Canceled","Completed"])
    }
}
