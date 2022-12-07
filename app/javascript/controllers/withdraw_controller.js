import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="withdraw"
export default class extends Controller {
  connect() {
  }

  pay() {
    console.log("coucou from pay");
  }
}
