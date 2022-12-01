import { Controller } from "@hotwired/stimulus"
import noUiSlider     from 'nouislider';
import wNumb          from 'wnumb';

export default class extends Controller {
  static targets = [ 'range', 'minInput', 'maxInput']
  static values = {
    min: Number,
    max: Number
  }
  connect() {
    noUiSlider.create(this.rangeTarget, {
      start: [this.minValue, this.maxValue],
      connect: true,
      margin: 1,
      step: 1,
      range: {
        'min': 0,
        'max': 50000
      },
      tooltips: [
        wNumb({decimals: 1}),
        wNumb({decimals: 1})
      ],
    })

    this.rangeTarget.noUiSlider.on('set', (e) => {
      const min = e[0]
      const max = e[1]

      this.#updateInputsValues(min, max)
    })


  }

  #updateInputsValues(min, max) {
    this.minInputTarget.value = min
    this.maxInputTarget.value = max
  }

  updateCheckBoxes() {

  }
}
