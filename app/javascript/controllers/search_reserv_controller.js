import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['formreserv', 'searchInputreserv', "listreserv"]

  connect() {
    console.log(this.formreservTarget);
    console.log(this.searchInputreservTarget);
    console.log(this.listreservTarget);

  }

  update() {

    const url = `${this.formreservTarget.action}?query=${this.searchInputreservTarget.value}`;
    console.log("input value:",this.searchInputreservTarget.value)
    console.log("form action:",this.formreservTarget.action)
    console.log("url:", url)
    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {

        console.log(data);
        this.listreservTarget.outerHTML = data;

      });
  }
}
