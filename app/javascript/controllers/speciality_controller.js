// app/javascript/controllers/speciality_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["speciality"];

  connect() {}

  hideSpeciality() {
    this.specialityTarget.classList.add("hidden");
  }

  showSpeciality() {
    this.specialityTarget.classList.remove("hidden");
  }

  showOrHideSpeciality() {
    const selectedRole = this.element.value;

    if (selectedRole === "doctor") {
      this.showSpeciality();
    } else {
      this.hideSpeciality();
    }
  }
}
