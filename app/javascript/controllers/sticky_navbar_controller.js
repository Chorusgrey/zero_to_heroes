import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["navbar"];

  connect() {
    this.navbarTarget.classList.add("fixed");
  }
}
