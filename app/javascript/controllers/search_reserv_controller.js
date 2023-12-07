import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ['formreserv', 'searchInputreserv', "listreserv", "dateInputreserv"]

  connect() {
    console.log(this.formreservTarget);
    console.log(this.searchInputreservTarget);
    console.log(this.listreservTarget);
  }

  update() {
    const url = this.buildUrl();
    console.log("url:", url)

    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        this.listreservTarget.outerHTML = data;
      });
  }

  change() {
    this.update();
  }

  buildUrl() {
    return `${this.formreservTarget.action}?query=${this.searchInputreservTarget.value}&date_query=${this.dateInputreservTarget.value}`;
  }
}
