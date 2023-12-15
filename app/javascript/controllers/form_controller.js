import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["submitbtn", "description"]

  // hide the submit button
  connect() {
    this.submitbtnTarget.hidden = true
  }

  // click the hidden button -> submit the form
  remotesubmit() {
    this.submitbtnTarget.click()
  }

  // handle the preview action
  preview() {
    // Get the value from the description field
    const description = this.descriptionTarget.value;
    // Display the preview, for example, in the message_preview div
    const previewElement = document.getElementById('message_preview');
    previewElement.innerText = description;
  }
}
