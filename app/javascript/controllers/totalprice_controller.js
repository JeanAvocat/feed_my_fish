import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="totalprice"
export default class extends Controller {
  static targets = ["start", "end", "result", "duration"]

  updateTotalPrice() {
    const start  = new Date(this.startTarget.value);
    const end  = new Date(this.endTarget.value);

    const duration = (end - start) / 3600  / 24 / 1000;
    const price = this.element.dataset.price;

    this.durationTarget.value = duration;
    this.durationTarget.innerText = duration;
    this.resultTarget.value = duration * price;
    this.resultTarget.innerText = duration * price;
  };
};
