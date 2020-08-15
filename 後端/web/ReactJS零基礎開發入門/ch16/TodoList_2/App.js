import React from "react"
import TodoInput from "./component/TodoInput"
import TodoEditInput from "./component/TodoEditInput"
import TodoItem from "./component/TodoItem"

class App extends React.Component {
  constructor() {
    super()

    // item = {text: '', isEdited: false }
    this.state = {
      items: [],
      inputValue: '',
      editedValue: ''
    }
  }

  // 處理TodoInput按下Enter按鍵的方法
  handleTodoInputKeyPress = () => {
    // 暫存目前的inputValue
    const newItem = { text: this.state.inputValue, isEdited: false }

    this.setState({ 
      items: [newItem, ...this.state.items],
      inputValue: ''
     })
  }

  // 處理TodoEditInput按下Enter按鍵的方法(儲存項目的方法)
  handleTodoEditInputKeyPress = (id) => {
    // 複製一個新的陣列，內容相當於目前的state中的items
    const newItems = [...this.state.items]

    // 此項目的編輯狀態修改為false
    newItems[id].isEdited = false

    // 此項目的文字更改為editedValue
    newItems[id].text = this.state.editedValue

    // state中的items要求要修改為newItems 
    this.setState({ items: newItems })

    // 清空state中的editedValue
    this.setState({ editedValue: '' })
  }

  // 處理要TodoInput輸入文字的方法
  handleTodoInputChange = (text) => {
    this.setState({ inputValue: text })
  }

  // 處理要TodoEditInput輸入文字的方法
  handleTodoEditInputChange = (text) => {
    this.setState({ editedValue: text })
  }

  // 處理TodoItem刪除某個項目的方法
  handleTodoItemDelete = (id) => {
    // 刪除特定索引值的項目
    const newItems = this.state.items.filter((value, index) => (
      index !== id
    ))
  
    // 刪除項目的另一種寫法
    // const newItems = this.state.items.slice(0,id).concat(this.state.items.slice(id+1))
  
    this.setState({ items: newItems })
  }

  // 處理TodoItem某個項目要進行編輯的方法
  handleTodoItemEdit = (id) => {
    // 複製一個新的陣列，內容相當於目前的state中的items
    const newItems = [...this.state.items]

    // 要進行編輯的項目的isEdited狀態值設定為true
    newItems[id].isEdited = true
    
    // state中的items要求要修改為newItems
    this.setState({ items: newItems })

    // 用於TodoEditInput編輯的對應state值editedValue設定為此項目文字
    this.setState({ editedValue: newItems[id].text })
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
            this.state.items.map((item, index) => (
              (item.isEdited)
              ? <TodoEditInput 
                  key={index}
                  value={this.state.editedValue}
                  onChange={this.handleTodoEditInputChange}
                  onKeyPress={
                    () => { this.handleTodoEditInputKeyPress(index) }
                  }
                />
              : <TodoItem 
                  key={index}
                  text={item.text}
                  deleteMethod={
                    () => { this.handleTodoItemDelete(index) }
                  }
                  editMethod={
                    () => { this.handleTodoItemEdit(index) }
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
