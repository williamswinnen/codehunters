"use strict";

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-code"
export default class extends Controller {
  static targets = ["code", "owner", "repo", "path"]
  connect() {


    //  https://api.github.com/repos/<owner>/<repo>/contents/<path
    console.log("hello from insert code controller ! ")
    const path = this.pathTarget.innerText.replace(/\s/g, "");
    const owner = this.ownerTarget.innerText.replace(/\s/g, "");
    const repo = this.repoTarget.innerText.replace(/\s/g, "");
    const githubToken = this.codeTarget.dataset.githubToken;
    const sha_url = `https://api.github.com/repos/${owner}/${repo}/contents/${path}`
    console.log(sha_url)
    const headers = {
      "Authorization": `Bearer ${githubToken}`
    }
    fetch(sha_url, {
      headers: headers
    })
    .then(response => response.json())
    .then(data => {
      const sha = data.sha
      const url = `https://api.github.com/repos/${owner}/${repo}/git/blobs/${sha}`
      fetch(url, {
        headers: headers
      })
      .then (d => d.json ())
      .then (d => {
        let new_content = (window.atob(d.content))
        this.codeTarget.insertAdjacentText("beforeend" , new_content)
      })
    })

    // const url = `https://api.github.com/repos/${owner}/${repo}/contents/app/views/bounties/show.html.erb`
  }

}
