import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = [ "reservations", "heros", "booked" ];

  connect() {
    console .log('connected');
  }

  reservations (event) {
    console.log(this.reservationsTarget)
    this.reservationsTarget.classList.add('visible')
    this.reservationsTarget.classList.remove('unvisible')
    this.herosTarget.classList.add('unvisible');
    this.herostarget.classList.remove('visible');
    this.bookedTarget.classList.add('unvisible');
    this.bookedTarget.classList.remove('visible');
  }
  heros (event) {
    this.reservationsTarget.classList.add('unvisible')
    this.reservationsTarget.classList.remove('visible')
    this.herosTarget.classList.add('visible');
    this.herosTarget.classList.remove('unvisible');
    this.bookedTarget.classList.add('unvisible');
    this.bookedTarget.classList.remove('visible');
  }
  booked (event) {
    this.reservationsTarget.classList.add('unvisible')
    this.reservationsTarget.classList.remove('visible')
    this.herosTarget.classList.add('unvisible');
    this.herosTarget.classList.remove('visible');
    this.bookedTarget.classList.add('visible');
    this.bookedTarget.classList.remove('unvisible');
  }
}
