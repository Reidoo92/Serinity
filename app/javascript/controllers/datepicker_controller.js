import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    flatpickr(this.element,{
      inline: true,
      enableTime: true,
      dateFormat: "d-m-Y H:i", // Format de date personnalisé
      locale: {
        // Vous pouvez également personnaliser les autres paramètres de localisation ici
        firstDayOfWeek: 1, // Par exemple, le premier jour de la semaine est lundi
      },
    })
  }
}
