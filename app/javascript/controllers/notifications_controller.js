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
    const name = document.getElementById("name").innerText;
    const notifs = document.getElementById("notifs");
    const notif = `<div class='notification-list dropdown-item ml-2'>
    <div class='notification-list_detail'>
        <p><b>${name}</b> proposed a solution to your <span>Bounty</span></p>
    </div>
    </div>`;
    console.log(notifs);
    notifs.insertAdjacentHTML("beforeend", notif);
    pastille.classList.remove("d-none");

  }

  showNotifications(event) {
    notifs.classList.toggle("d-none")
  }


  removeGreen(event){
    console.log("removed by clicking")
    pastille.classList.add("d-none")
  }
}
