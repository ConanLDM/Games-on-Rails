// Import and register all your controllers from the importmap under controllers/*
import { Application } from '@hotwired/stimulus'
import { Application } from 'stimulus'
import SearchFormController from "./search_form_controller.js"
import HelloController from "./hello_controller.js"
import Dropdown from 'stimulus-dropdown'
import Carousel from "stimulus-carousel"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import CharacterCounter from 'stimulus-character-counter'

const application = Application.start()
application.register("dropdown", Dropdown)
application.register("carousel", Carousel)
application.register('character-counter', CharacterCounter)

// Eager load all controllers defined in the import map under controllers/**/*_controller
eagerLoadControllersFrom("controllers", application)

application.register("search-form", SearchFormController)

application.register("hello", HelloController)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
