package app

class DayHikesController {

    def index = {
		log.info "${session.id} ${request.remoteAddr} index"
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def activities = Activity.findAll(
			"from Activity as a where a.activityType = 'Day Hike' and (a.statusType= 'Planned' or a.statusType= 'Scheduled') order by hikeDate")
        [activityInstanceList: activities, activityInstanceTotal: activities.count()]
    }

}
