import React from "react"

const TextInput = props => {
  // 回傳，相當於渲染(render)方法
  return (
    <div>
      <input
        type="text"
        placeholder={props.initText}
        onChange={e => {
          props.onChange(e.target.value)
        }}
        value={props.value}
      />
    </div>
  )
}

// 匯出TextInput模組
export default TextInput
