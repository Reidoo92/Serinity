import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';

export default class extends Controller {

  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
    });

    this.#addMarkersToMap();
    this.#fitMapToMarkers();
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup({
        closeButton: false,
        className: 'custom-popup',
        offset: [0, -30],
      }).setHTML(marker.info_window);

      const mapMarker = new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .addTo(this.map);

      mapMarker.setPopup(popup);

      mapMarker.getElement().addEventListener('click', () => {
        if (!popup.isOpen()) {
          // Fermer les autres popups avant d'ouvrir une nouvelle
          this.map.popups.forEach((otherPopup) => otherPopup.remove());

          mapMarker.togglePopup();
          popup.getElement().classList.add('popup-expand');
        } else {
          popup.remove();
        }
      });
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }
}
