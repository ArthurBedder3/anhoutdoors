package app

class AffiliatedProgramsController {

    def index = { 
		log.info "${session.id} ${request.remoteAddr} index"
        params.max = Math.min(params.max ? params.int('max') : 15, 100)
		if(params.sort == null){
			params.sort = 'hikeDate'
		}
        def wayneNav = Activity.findAll(
			"from Activity as a where (a.statusType= 'Class' and a.activityType= 'Wayne Navigation') order by hikeDate")
        def wayneHigh = Activity.findAll(
			"from Activity as a where (a.statusType= 'Class' and a.activityType= 'Wayne Highlands') order by hikeDate")
        def wayneHarr = Activity.findAll(
			"from Activity as a where (a.statusType= 'Class' and a.activityType= 'Wayne Harriman') order by hikeDate")
        def ridgewoodNav = Activity.findAll(
			"from Activity as a where (a.statusType= 'Class' and a.activityType= 'Ridgewood Navigation') order by hikeDate")
        def ridgewoodHike = Activity.findAll(
			"from Activity as a where (a.statusType= 'Class' and a.activityType= 'Ridgewood Hikes') order by hikeDate")
        def ridgewoodWalk = Activity.findAll(
			"from Activity as a where (a.statusType= 'Class' and a.activityType= 'Ridgewood Walks') order by hikeDate")
        [ridgewoodWalkList: ridgewoodWalk, ridgewoodHikeList: ridgewoodHike, ridgewoodNavList: ridgewoodNav,
			wayneNavList: wayneNav, wayneHighList: wayneHigh, wayneHarrList: wayneHarr, activityInstanceTotal: 0]
	}
}
