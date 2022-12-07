import { Controller } from "@hotwired/stimulus"
import noUiSlider     from 'nouislider';
import wNumb          from 'wnumb';

export default class extends Controller {
  static targets = [ 'range', 'minInput', 'maxInput']
  static values = {
    min: Number,
    max: Number,
    maxPrice: Number
  }
  connect() {
    console.log(this.minValue, this.maxValue)
    noUiSlider.create(this.rangeTarget, {
      start: [this.minValue, this.maxValue],
      connect: true,
      step: 0.00001,
      range: {
        'min': 0,
        'max': this.maxPriceValue
      },
      tooltips: [
        wNumb({decimals: 5}),
        wNumb({decimals: 5})
      ],
    })

    this.rangeTarget.noUiSlider.on('set', this.#updateInputsValues.bind(this))
  }

  #updateInputsValues(values, handle, unencoded, tap, positions, noUiSlider) {
    this.minInputTarget.value = unencoded[0]
    this.maxInputTarget.value = unencoded[1]
  }
}
