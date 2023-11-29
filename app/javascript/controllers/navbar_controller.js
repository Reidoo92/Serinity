import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["togglableElement"];

  connect() {
    console.log("connected");
  }

  openMenu(event) {
    event.preventDefault();
    console.log(this.togglableElementTarget);
    this.togglableElementTarget.classList.add("active");
  }

  closeMenu(event) {
    event.preventDefault();
    console.log(this.togglableElementTarget);
    this.togglableElementTarget.classList.remove("active");
  }
}
