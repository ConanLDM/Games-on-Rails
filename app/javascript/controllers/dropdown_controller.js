import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["dropdownContent", "openButton", "closeButton", "active"]
  static values = { open: Boolean }

  connect() {
    if (this.openValue) {
      this.openDropdown()
    } else {
      this.closeDropdown()
    }
  }

  toggleDropdown() {
    this.dropdownContentTarget.classList.toggle("hidden")
    this.openButtonTarget.classList.toggle("hidden")
    this.closeButtonTarget.classList.toggle("hidden")
    this.activeTarget.classList.toggle("bg-zinc-400")
  }

  openDropdown() {
    this.dropdownContentTarget.classList.remove("hidden")
    this.openButtonTarget.classList.add("hidden")
    this.closeButtonTarget.classList.remove("hidden")
    this.activeTarget.classList.add("bg-zinc-400")
  }

  closeDropdown() {
    this.dropdownContentTarget.classList.add("hidden")
    this.openButtonTarget.classList.remove("hidden")
    this.closeButtonTarget.classList.add("hidden")
    this.activeTarget.classList.remove("bg-zinc-400")
  }
}
