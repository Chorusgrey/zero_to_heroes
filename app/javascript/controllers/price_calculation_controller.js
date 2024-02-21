import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static values = { pricePerDay: String }
  static targets = ["start_date", "end_date", "totalPrice"]

  calculate() {
    const startDate = this.start_dateTarget.value
    const endDate = this.end_dateTarget.value
    const value = this.pricePerDayValue
    console.log(value);
    console.log(startDate);
    console.log(endDate);

    const diffTime = Math.abs(new Date(endDate) - new Date(startDate));
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
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
    flatpickr(this.start_dateTarget, {});
    flatpickr(this.end_dateTarget, {});
  }
}
