// Import and register all your controllers from the importmap under controllers/*
import { Application } from '@hotwired/stimulus'
import Dropdown from 'stimulus-dropdown'
import Carousel from "stimulus-carousel"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

const application = Application.start()
application.register("dropdown", Dropdown)
application.register("carousel", Carousel)

// Eager load all controllers defined in the import map under controllers/**/*_controller
eagerLoadControllersFrom("controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
