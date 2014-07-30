import org.apache.shiro.crypto.hash.Sha256Hash
import app.Activity
import grails.util.GrailsUtil

class BootStrap {

    def init = { servletContext ->
		 switch(GrailsUtil.environment){
		 case "development":
		  def user =  new ShiroUser(username:"ab3Anh", passwordHash: new Sha256Hash("Admin").toHex())
		  user.addToPermissions("*:*")
		  user.save()
 		  def activity1 = new Activity(
			 hikeDate: new Date(110,4,10), 
			 activityType: 'Day Hike', 
			 shortDescription: 'Norvin Green', 
			 Fee: 10, 
			 registrationDate: new Date(), 
			 fullDescription: 'test full description 1', 
			 statusType: 'Planned')
		  if(!activity1.save()){
			println activity1.errors 
		  }
		  def activity2 = new Activity(
			 hikeDate: new Date(110,4,8),
			 activityType: 'Night Hike',
			 shortDescription: 'Ringwood State Park',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Full Moon hike to Horse Pond Mountain',
			 statusType: 'Planned')
		  if(!activity2.save()){
			println activity2.errors
		  }
		  def activity3 = new Activity(
			 hikeDate: new Date(110,4,17),
			 activityType: 'Yoga Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Take a hike and do some yoga',
			 statusType: 'Planned')
		  if(!activity3.save()){
			println activity3.errors
		  }
		  def activity4 = new Activity(
			 hikeDate: new Date(110,4,24),
			 activityType: 'Camping',
			 shortDescription: 'Adirondacks',
			 Fee: 25.00,
			 specialEquipment: "Camping gear",
			 registrationDate: new Date(),
			 fullDescription: 'Camping on Lake George',
			 statusType: 'Planned')
		  if(!activity4.save()){
			println activity4.errors
		  }
		  def activity5 = new Activity(
			 hikeDate: new Date(110,4,31),
			 activityType: 'Rafting',
			 shortDescription: 'Delaware River',
			 Fee: 75.00,
			 registrationDate: new Date(),
			 fullDescription: 'A slow float down the river',
			 statusType: 'Planned')
		  if(!activity5.save()){
			println activity5.errors
		  }
		  def activity6 = new Activity(
			 hikeDate: new Date(110,5,10),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity6.save()){
			println activity6.errors
		  }
		 def activity7 = new Activity(
			 hikeDate: new Date(110,6,10),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity7.save()){
			println activity7.errors
		  }
		 def activity8 = new Activity(
			 hikeDate: new Date(110,6,20),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity8.save()){
			println activity8.errors
		  }
		def activity9 = new Activity(
			hikeDate: new Date(),
			activityType: 'Day Hike',
			shortDescription: 'Harriman',
			Fee: 10,
			registrationDate: new Date(),
			fullDescription: 'Come sweat in Harriman with us',
			statusType: 'Planned')
		 if(!activity9.save()){
		   println activity9.errors
		 }
	    def activity10 = new Activity(
		  hikeDate: new Date(),
		  activityType: 'Day Hike',
		  shortDescription: 'Harriman',
		  Fee: 10,
		  registrationDate: new Date(),
		  fullDescription: 'Come sweat in Harriman with us',
		  statusType: 'Planned')
	    if(!activity10.save()){
		 println activity10.errors
	    }
	   def activity11 = new Activity(
		 hikeDate: new Date(),
		 activityType: 'Day Hike',
		 shortDescription: 'Harriman',
		 Fee: 10,
		 registrationDate: new Date(),
		 fullDescription: 'Come sweat in Harriman with us',
		 statusType: 'Planned')
	   if(!activity11.save()){
		println activity11.errors
	   }
	  def activity12 = new Activity(
		 hikeDate: new Date(),
		 activityType: 'Day Hike',
		 shortDescription: 'Harriman',
		 Fee: 10,
		 registrationDate: new Date(),
		 fullDescription: 'Come sweat in Harriman with us',
		 statusType: 'Planned')
	  if(!activity12.save()){
		println activity12.errors
	  }
		  def activity13 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity13.save()){
			println activity13.errors
		  }
		  def activity14 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity14.save()){
			println activity14.errors
		  }
		  def activity15 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity15.save()){
			println activity15.errors
		  }
		  def activity16 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity16.save()){
			println activity16.errors
		  }
		  def activity17 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity17.save()){
			println activity17.errors
		  }
		  def activity18 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity18.save()){
			println activity18.errors
		  }
		  def activity19 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity19.save()){
			println activity19.errors
		  }
		  def activity20 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity20.save()){
			println activity20.errors
		  }
		  def activity21 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity21.save()){
			println activity21.errors
		  }
		  def activity22 = new Activity(
			 hikeDate: new Date(),
			 activityType: 'Day Hike',
			 shortDescription: 'Harriman',
			 Fee: 10,
			 registrationDate: new Date(),
			 fullDescription: 'Come sweat in Harriman with us',
			 statusType: 'Planned')
		  if(!activity22.save()){
			println activity22.errors
		  }
		  break
		  case "production":

		  def user =  new ShiroUser(username:"ab3Anh", passwordHash: new Sha256Hash("ab3Admin4stuff").toHex())
		  user.addToPermissions("*:*")
		  user.save()
		  def user2 =  new ShiroUser(username:"hpetzoldjr@yahoo.com", passwordHash: new Sha256Hash("rockyMountainHigh").toHex())
		  user2.addToPermissions("*:*")
		  user2.save()

		  break
	  }//eo switch environments

    }
	
    def destroy = {
    }
}
