package app

class AboutUsController {

    def index = {
		log.info "${session.id} ${request.remoteAddr} index"
	}
}
