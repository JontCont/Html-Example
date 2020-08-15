import React from "react"
import TodoInput from "./component/TodoInput"
import TodoItem from "./component/TodoItem"

class App extends React.Component {
  constructor() {
    super()
    this.state = {
      items: [],
      inputValue: ''
    }
  }

  //部份應用的寫法 Partial application
  handleDeletePA = (id) => () => {
    // 刪除特定索引值的項目
    const newItems = this.state.items.filter((value, index) => (
      index !== id
    ))

    this.setState({ items: newItems })
  }

  // 處理TodoInput按下Enter按鍵的方法
  handleTodoInputKeyPress = () => {
    // 暫存目前的inputValue
    const newItem = this.state.inputValue

    this.setState({ 
      items: [newItem, ...this.state.items],
      inputValue: ''
     })
  }

  // 處理要TodoInput輸入文字的方法
  handleTodoInputChange = (text) => {
    this.setState({ inputValue: text})
  }

  // 處理刪除某個項目的方法
  handleTodoItemDelete = (id) => {
    // 刪除特定索引值的項目
    const newItems = this.state.items.filter((value, index) => (
      index !== id
    ))
  
    // 刪除項目的另一種寫法
    // const newItems = this.state.items.slice(0,id).concat(this.state.items.slice(id+1))
  
    this.setState({ items: newItems })
  }

  render() {
    return (
      <div>
        <TodoInput
          initText="開始輸入文字吧"
          onKeyPress={this.handleTodoInputKeyPress}
          onChange={this.handleTodoInputChange}
          value={this.state.inputValue}
        />
        <ul>
          {
            this.state.items.map((value, index) => (
              <TodoItem 
                key={index}
                text={value}
                deleteMethod={
                  () => { this.handleTodoItemDelete(index) }
                }
              />
            ))
          }
        </ul>
      </div>
    )
  }
}

export default App
