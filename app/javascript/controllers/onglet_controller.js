import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = [ "reservations", "heros", "booked" ];

  connect() {
    console .log('connected');
  }

  reservations (event) {

    this.reservationsTarget.classList.add('visible')
    this.herosTarget.classList.add('unvisible');
    this.bookedTarget.classList.add('unvisible');
  }
  heros (event) {
    this.reservationsTarget.classList.add('unvisible')
    this.herosTarget.classList.add('visible');
    this.bookedTarget.classList.add('unvisible');
  }
  booked (event) {
    this.reservationsTarget.classList.add('unvisible')
    this.herosTarget.classList.add('unvisible');
    this.bookedTarget.classList.add('visible');
  }
}
