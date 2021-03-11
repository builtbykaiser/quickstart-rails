import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [
    "output"
  ]

  connect() {
    this.sayHello()
  }

  sayHello() {
    this.outputTarget.textContent = `${this.greetings[Math.floor(Math.random() * this.greetings.length)]}, Stimulus!`
  }

  get greetings() {
    return [
      "Hello",
      "Hola",
      "Bonjour",
      "Guten Tag",
      "Ciao",
      "Namaste",
      "Aloha"
    ]
  }
}
