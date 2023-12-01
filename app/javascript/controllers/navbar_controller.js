import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["togglableElement"];

  connect() {
    console.log("connected");
    document.addEventListener("click", this.handleDocumentClick.bind(this));
  }

  disconnect() {
    document.removeEventListener("click", this.handleDocumentClick.bind(this));
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

  handleDocumentClick(event) {
    if (this.togglableElementTarget.classList.contains("active") &&
        !this.element.contains(event.target) &&
        !this.togglableElementTarget.contains(event.target)) {
      this.togglableElementTarget.classList.remove("active");
    }
  }

}
