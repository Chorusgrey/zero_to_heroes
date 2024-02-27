import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static values = { pricePerDay: String }
  static targets = ["startDate", "endDate", "totalPrice"]

  calculate() {
    const start = this.startDateTarget.value
    const end = this.endDateTarget.value
    const value = this.pricePerDayValue
    console.log(value);
    console.log(start);
    console.log(end);

    const diffTime = Math.abs(new Date(end) - new Date(start));
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24)) + 1;
    console.log(diffDays);
    const totalPrice = diffDays * value;
    console.log(totalPrice);

    if (totalPrice > 0) {
      this.totalPriceTarget.innerHTML = `Total price: ${totalPrice} EUR`
    } else {
      this.totalPriceTarget.innerHTML = `please select a start and end date`
    }
  }

  connect() {
    console.log(this.pricePerDayValue);
    flatpickr(this.startDateTarget, {});
    flatpickr(this.endDateTarget, {});
  }
}
