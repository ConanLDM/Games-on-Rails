import { Controller } from "stimulus";
import Carousel from "stimulus-carousel";

export default class extends Controller {
  connect() {
    // Initialize the carousel
    new Carousel(this.element);
  }
}
