import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

// Connects to data-controller="open-modal"
export default class extends Controller {
  connect() {
    console.log(this.element)
    // check if errors
    if (document.querySelector(".invalid-feedback")) {
      this.modal = new Modal(this.element)
      this.modal.show()
    }
    // this.element.show()
  }
}
