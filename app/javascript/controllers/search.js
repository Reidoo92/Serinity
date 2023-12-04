import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input"];

  connect() {
    console.log("Connected to search controller");
  }

  search() {
    const searchTerm = this.inputTarget.value;
    if (searchTerm.trim() !== "") {
      alert("Effectuer une recherche avec : " + searchTerm);
      // Vous pouvez effectuer des actions de recherche réelles ici.
    } else {
      alert("Veuillez entrer un terme de recherche.");
    }
  }
}
