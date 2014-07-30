package app

class HomeController {

    def index = { 
		log.info "${session.id} ${request.remoteAddr} index"
		redirect(uri:"/index.gsp")
	}

	def relist = {
		log.info "${session.id} ${request.remoteAddr} relist"
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
		if(params.sort == null){
			params.sort = 'hikeDate'
			params.order = 'asc'
		}
		def activities = Activity.list(params)
        [activityInstanceList: activities, activityInstanceTotal: activities.count()]
    }
}
