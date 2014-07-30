package app

class PhotosController {

    def index = { 
		log.info "${session.id} ${request.remoteAddr} index"
		
	}
}
