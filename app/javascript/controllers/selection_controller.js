import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selection"
export default class extends Controller {
  static values = { garmentId: Number }

  connect() {
    this.csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute("content")
  }

  async select(evt) {
    const form = new FormData
    if (document.querySelector("#fabric-section")) {
      form.append("garment[fabric_id]", evt.params.fabricId);
    }

    if (document.querySelector("#detail-section")) {
      form.append("garment[detail_id]", evt.params.detailId);
    }

    const options = {
      method: "PATCH",
      headers: { "Accept": "application/json", "X-CSRF-Token": this.csrfToken },
      body: form
    }

    const response = await fetch(`/garments/${this.garmentIdValue}`, options)
    const data = await response.json();
    document.querySelector('#image').innerHTML = data.html
  }
}
