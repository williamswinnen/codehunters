import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["startTime"]
  connect() {
    console.log(this.element)
    new flatpickr(this.element, {
      minDate: new Date().fp_incr(1)
      // more options available on the documentation!

    });
  }
}
