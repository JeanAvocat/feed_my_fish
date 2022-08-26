import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="totalprice"
export default class extends Controller {
  static targets = ["start", "end", "result", "duration", "fee", "netprice"]

  connect() {
    this.updateTotalPrice()
  }

  updateTotalPrice() {
    const start  = new Date(this.startTarget.value);
    const end  = new Date(this.endTarget.value);

    const duration = (end - start) / 3600  / 24 / 1000;
    const price = this.element.dataset.price;
    const fee = Math.round(price * duration * 0.05);
    const netprice = duration * price;

    this.durationTarget.value = duration;
    this.durationTarget.innerText = duration;
    this.feeTarget.value = fee;
    this.feeTarget.innerText = fee;
    this.netpriceTarget.value = netprice;
    this.netpriceTarget.innerText = netprice;
    this.resultTarget.value = netprice + fee;
    this.resultTarget.innerText = netprice + fee;
  };
};
