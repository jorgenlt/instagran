import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }
  updateNavbar() {
    // if (window.scrollY >= (100 + this.element.offsetHeight)) {
    if (window.scrollY >= (204)) {
      this.element.classList.add("button_banner")
      this.element.classList.remove("banner-buttons")
    } else {
      this.element.classList.add("banner-buttons")
      this.element.classList.remove("button_banner")
    }
  }
}
