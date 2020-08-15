// 匯入react模組
import React from 'react'

// 樣式定義物件
const styles = {
  textAlign: 'center'
}

class App extends React.Component {
  // 建構式
  constructor(props) {
    super(props)
    this.state = {
      total: 0
    }
  }
  
  // 處理加一按鈕的事件方法
  handleAddButtonClick = () => {
    this.setState({ total: this.state.total + 1 })
  }

  // 處理減一按鈕的事件方法
  handleSubButtonClick = () => {
    this.setState({ total: this.state.total - 1 })
  }

  // 渲染(呈現)方法
  render() {
    return (
      <div style={styles}>
        <h1>{this.state.total}</h1>
        <button onClick={this.handleAddButtonClick}>+</button>
        <button onClick={this.handleSubButtonClick}>-</button>
      </div>
    )
  }
}

// 輸出元件
export default App
