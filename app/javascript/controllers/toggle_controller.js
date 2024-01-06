import { Controller } from "stimulus"
import ToggleController from "./controllers/toggle_controller"

export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log("Hello from toggle_controller")
  }

  fire(event) {
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
