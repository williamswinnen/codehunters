import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notifications"
export default class extends Controller {
  static targets = ["notifs", "form", "name"]
  connect() {
    console.log("hello from notifications controller")
  }


  addNotification(event){
    console.log("okay");
    const pastille = document.getElementById("pastille");
    pastille.classList.remove("d-none");
  }

  showNotifications(event) {
    notifs.classList.toggle("d-none")
  }


  removeGreen(event){
    console.log("removed by clicking");
    pastille.classList.add("d-none");
}

}
