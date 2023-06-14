import { Controller } from "@hotwired/stimulus"
import flatpickr from 'flatpickr'

// Connects to data-controller="datepickr"
export default class extends Controller {
  static targets=['startDate', 'endDate']

  // connect() {
  //   console.log('hello');
  //   console.log(this.startDateTarget);
  //   console.log(this.endDateTarget);
  //   flatpickr(this.startDateTarget);
  //   flatpickr(this.endDateTarget);
  // }
}
