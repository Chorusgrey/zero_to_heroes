import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="onglet"
export default class extends Controller {
  static targets = [ "reservations", "heros" ];

  connect() {
    console .log('connected');
  }

  switch (key) {
    const reservations = document.querySelector('.list-reservation');
    const heros = document.querySelector('.list-heros');

    if (reservations.classList.contains('unvisible')) {
      console.log('1');
      reservations.classList.remove('unvisible');
      reservations.classList.add('visible');
      heros.classList.add('unvisible');
    } else {
      console.log('2');
      reservations.classList.add('unvisible');
      reservations.classList.remove('visible');
      heros.classList.remove('unvisible');
    }

    if (heros.classList.contains('unvisible')) {
      console.log('3');
      heros.classList.remove('visible');
      reservations.classList.remove('unvisible');
    } else {
      console.log('4');
      heros.classList.remove('unvisible');
      reservations.classList.add('visible');
    }
    // this.herosTarget.classList.toggle('unvisible');
  }

}
