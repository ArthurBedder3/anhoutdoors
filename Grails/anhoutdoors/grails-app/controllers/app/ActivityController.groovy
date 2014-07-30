package app

class ActivityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
		log.info "${session.id} ${request.remoteAddr} index"
        redirect(action: "list", params: params)
    }

	
	def list = { 
		log.info "${session.id} ${request.remoteAddr} list"
        params.max = Math.min(params.max ? params.int('max') : 20, 100)
		if(params.sort == null){
			params.sort = 'hikeDate'
			params.order = 'asc'
		}
        [activityInstanceList: Activity.findAll(params), activityInstanceTotal: Activity.count()]
	}
	
    def create = {
		log.info "${session.id} ${request.remoteAddr} create"
        def activityInstance = new Activity()
        activityInstance.properties = params
        return [activityInstance: activityInstance]
    }
	
    def save = {
		log.info "${session.id} ${request.remoteAddr} save ${params.id}"
        def activityInstance = new Activity(params)
        if (activityInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'activity.label', default: 'Activity'), activityInstance.id])}"
            redirect(action: "show", id: activityInstance.id)
        }
        else {
            render(view: "create", model: [activityInstance: activityInstance])
        }
    }

    def show = {
		log.info "${session.id} ${request.remoteAddr} show ${params.id}"
        def activityInstance = Activity.get(params.id)
        if (!activityInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
            redirect(action: "list")
        }
        else {
            [activityInstance: activityInstance]
        }
    }

    def full = {
		log.info "${session.id} ${request.remoteAddr} full ${params.id}"
        def activityInstance = Activity.get(params.id)
        if (!activityInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
            redirect(action: "list")
        }
        else {
            [activityInstance: activityInstance]
        }
    }

    def update = {
		log.info "${session.id} ${request.remoteAddr} update ${params.id}"
        def activityInstance = Activity.get(params.id)
        if (activityInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (activityInstance.version > version) {
                    
                    activityInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'activity.label', default: 'Activity')] as Object[], "Another user has updated this Activity while you were editing")
                    render(view: "edit", model: [activityInstance: activityInstance])
                    return
                }
            }
            activityInstance.properties = params
            if (!activityInstance.hasErrors() && activityInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'activity.label', default: 'Activity'), activityInstance.id])}"
                redirect(action: "show", id: activityInstance.id)
            }
            else {
                render(view: "edit", model: [activityInstance: activityInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
            redirect(action: "list")
        }
    }
	
    def edit = {
		log.info "${session.id} ${request.remoteAddr} edit ${params.id}"
        def activityInstance = Activity.get(params.id)
        if (!activityInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [activityInstance: activityInstance]
        }
    }

    def delete = {
		log.info "${session.id} ${request.remoteAddr} delete ${params.id}"
        def activityInstance = Activity.get(params.id)
        if (activityInstance) {
            try {
                activityInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'activity.label', default: 'Activity'), params.id])}"
            redirect(action: "list")
        }
    }
}
