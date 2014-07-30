package app

class ActivitiesController {

    def index = {
		log.info "${session.id} ${request.remoteAddr} index"
        params.max = Math.min(params.max ? params.int('max') : 15, 100)
		if(params.sort == null){
			params.sort = 'hikeDate'
		}
        def activities = Activity.findAll(
			"from Activity as a where (a.statusType= 'Planned' or a.statusType= 'Scheduled') order by hikeDate")
        [activityInstanceList: activities, activityInstanceTotal: 0]
    }

	def nextHike = {
		log.info "${session.id} ${request.remoteAddr} nextHike"
        def activityInstance = Activity.find(
			"from Activity as a where (a.statusType= 'Planned' or a.statusType= 'Scheduled') order by hikeDate")
        if (!activityInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
            redirect(action: "index")
        }
        else {
            [activityInstance: activityInstance]
        }
    }
}
