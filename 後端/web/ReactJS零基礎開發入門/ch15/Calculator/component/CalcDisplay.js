import React from 'react'
import '../App.css'
import PropTypes from 'prop-types'

function CalcDisplay(props) {
  return (
      <div className="calc-display">
        {props.text}
      </div>
  )
}

// 設定props.text的類型為字串
CalcDisplay.propTypes = {
  text: PropTypes.string
}

// 設定props的預設值
CalcDisplay.defaultProps = {
  text: '100'
}

export default CalcDisplay
