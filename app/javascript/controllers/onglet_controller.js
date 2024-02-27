import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = [ "reservations", "heros", "booked" ];

  connect() {
    console .log('connected');
  }

  switch (key) {
    const reservations = document.querySelector('.list-reservation');
    const heros = document.querySelector('.list-heros');

    if (reservations.classList.contains('unvisible')) {
      reservations.classList.remove('unvisible');
      reservations.classList.add('visible');
      heros.classList.add('unvisible');
    } else {
      reservations.classList.add('unvisible');
      reservations.classList.remove('visible');
      heros.classList.remove('unvisible');
    }
    if (heros.classList.contains('unvisible')) {
      heros.classList.remove('visible');
      reservations.classList.remove('unvisible');
    } else {
      heros.classList.remove('unvisible');
      reservations.classList.add('visible');
    }
    // this.herosTarget.classList.toggle('unvisible');
  }
}
