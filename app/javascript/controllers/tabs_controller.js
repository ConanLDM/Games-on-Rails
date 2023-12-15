import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['btn', 'tab'];

  select(event) {
    const targetButton = event.currentTarget;
    const tabId = targetButton.getAttribute('data-tabs-target-tab');
    this.element.querySelectorAll('button.btn').forEach(btn => {
      btn.classList.remove('active');
    });
    targetButton.classList.add('active');
    this.element.querySelector(`#${tabId}`).classList.add('active');
  }
}
