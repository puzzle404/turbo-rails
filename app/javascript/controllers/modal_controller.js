import { Controller } from "@hotwired/stimulus";
import * as bootstrap from "bootstrap";

export default class extends Controller {
  connect() {
    this.modal = new bootstrap.Modal(this.element);
    console.log("askljdlasdj");
  }
  hola() {
    console.log("first");
  }

  open() {
    if (!this.modal.isOpened) {
      this.modal.show();
    }
  }

  close(event) {
    if (event.detail.success) {
      this.modal.hide();
    }
  }
}
