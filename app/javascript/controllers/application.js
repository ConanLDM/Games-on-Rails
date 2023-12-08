import { Application } from "@hotwired/stimulus"
import '@swiper/css/bundle'
import './controllers/tabs_controller';

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
