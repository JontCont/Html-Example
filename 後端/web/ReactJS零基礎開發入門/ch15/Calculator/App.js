// 匯入react模組
import React from "react"
import CalcButton from "./component/CalcButton"
import CalcDispaly from "./component/CalcDisplay"
import "./App.css"

const buttonData = [
  "7",
  "8",
  "9",
  "+",
  "4",
  "5",
  "6",
  "-",
  "1",
  "2",
  "3",
  "*",
  "c",
  "0",
  "=",
  "/"
]

class App extends React.Component {
  // 建構式
  constructor(props) {
    super(props)
    this.state = {
      firstNumber: 0,
      secondNumber: 0,
      result: 0,
      operator: ""
    }
  }

  handleOperator = () => {
    let result = this.state.result

    switch (this.state.operator) {
      case "+":
        result = this.state.firstNumber + this.state.secondNumber
        break
      case "-":
        result = this.state.firstNumber - this.state.secondNumber
        break
      case "*":
        result = this.state.firstNumber * this.state.secondNumber
        break
      case "/":
        result = this.state.firstNumber / this.state.secondNumber
        break
      default:
        break
    }

    this.setState({ 
      firstNumber: result,
      secondNumber: 0,
      result: result,
      operator: "="
    })

  }

  handleButtonClick = value => {
    switch (value) {
      case "c":
        this.setState({
          firstNumber: 0,
          secondNumber: 0,
          result: 0,
          operator: ""
        })
        break
      case "=":
        if (this.state.operator === "" || this.state.operator === "=") return
        this.handleOperator()
        break
      case "+":
      case "-":
      case "*":
      case "/":
        this.setState({ operator: value })
        break
      default:
        if (this.state.operator === "=") {
          this.setState({
            operator: "",
            firstNumber: +value,
            result: 0,
            secondNumber: 0
          })
          return
        }

        if (this.state.operator === "") {
          this.setState({ firstNumber: this.state.firstNumber * 10 + (+value) })
        } else {
          this.setState({ secondNumber: this.state.secondNumber * 10 + (+value) })
        }
        break
    }
  }

  // 渲染(呈現)方法
  render() {
    let displayNumber = this.state.secondNumber

    if (this.state.operator === "" || this.state.secondNumber === 0) {
      displayNumber = this.state.firstNumber
    }

    if (this.state.operator === "=") {
      displayNumber = this.state.result
    }

    return (
      <div className="app-layout">
        <CalcDispaly text={displayNumber} />
        <div className="calc-button-area">
          {buttonData.map((value, index) => (
            <CalcButton
              key={index}
              text={value}
              onClick={() => {
                this.handleButtonClick(value)
              }}
            />
          ))}
        </div>
      </div>
    )
  }
}

// 輸出元件
export default App
