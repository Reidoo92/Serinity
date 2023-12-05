import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['form', 'searchInput', "list", "lol"];

  connect() {
    console.log(this.formTarget);
    console.log(this.searchInputTarget);
    console.log(this.listTarget);

  }

  update() {

    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`;
    console.log("input value:",this.searchInputTarget.value)
    console.log("form action:",this.formTarget.action)
    console.log("url:", url)
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {

        this.listTarget.outerHTML = data;
      });
  }
}
