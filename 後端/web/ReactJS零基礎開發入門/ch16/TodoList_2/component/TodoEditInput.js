import React from "react"

const TodoEditInput = props => {
  // 回傳，相當於渲染(render)方法
  return (
    <div>
      <input
        type="text"
        autoFocus
        onBlur={e => {
          props.onKeyPress()
        }}
        onKeyPress={e => {
          if (e.target.value && e.key === "Enter") {
            props.onKeyPress()
          }
        }}
        onChange={e => {
          props.onChange(e.target.value)
        }}
        value={props.value}
      />
    </div>
  )
}

// 匯出TodoEditInput模組
export default TodoEditInput
