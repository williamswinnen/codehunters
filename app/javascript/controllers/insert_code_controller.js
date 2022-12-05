"use strict";

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-code"
export default class extends Controller {
  static targets = ["code", "owner", "repo"]
  connect() {
    //  https://api.github.com/repos/<owner>/<repo>/contents/<path
    console.log("hello from insert code controller ! ")
    const path = "app/controllers/bounties_controller.rb"
    const owner = this.ownerTarget.innerText.replace(/\s/g, "");
    const repo = this.repoTarget.innerText.replace(/\s/g, "");
    const sha_url = `https://api.github.com/repos/${owner}/${repo}/contents/${path}`!
    const headers = {
      "Authorization": `Bearer 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`
    }
    fetch(sha_url, {
      headers: headers
    })
      .then(response => response.json())
      .then(data => {
        const sha = data.sha
        const url =  `https://api.github.com/repos/${owner}/${repo}/git/blobs/${sha}`
        fetch(url)
          .then (d => d.json ())
          .then (d => {
            const new_content = (window.atob(d.content))
            console.log(new_content)
            this.codeTarget.insertAdjacentText("beforeend" , new_content)
          })
      })

    // const url = `https://api.github.com/repos/${owner}/${repo}/contents/app/views/bounties/show.html.erb`
}

}
