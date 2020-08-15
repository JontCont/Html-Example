// -------------------------------------

var dropdown =
  <Dropdown>
    A dropdown list
    <Menu>
      <MenuItem>Do Something</MenuItem>
      <MenuItem>Do Something Fun!</MenuItem>
      <MenuItem>Do Something Else</MenuItem>
    </Menu>
  </Dropdown>;

render(dropdown);

// -------------------------------------
// App.js
import React from 'react'

class App extends React.Component {
  render() {
    return (
      <div>
        <h1>今天就開始學React!</h1>
      </div>
    )
  }
}

export default App

// -------------------------------------

// 匯入react模組
import React from 'react'

class App extends React.Component {
  // 建構式
  constructor(props) {
    super(props)
    this.state = {}
  }

  // 生命週期方法
  componentDidMount() {
    // 元件已掛載到真實DOM中時要執行的程式碼
    // ...
  }

  componentWillUnmount() {
    // 元件即將卸載出真實DOM時要執行的程式碼
    // ...
  }

  // 渲染(呈現)方法
  render() {
    return (
      <div>
        <h1>今天就開始學React!</h1>
      </div>
    )
  }
}

// 輸出元件
export default App

// -------------------------------------

// 匯入react模組
import React from 'react'

function App(props) {
  return (
    <div>
      <h1>今天就開始學React!</h1>
    </div>
  )
}

// 輸出元件
export default App

// -------------------------------------

// 匯入react模組
import React from 'react'

const App = (props) => (
  <div>
    <h1>今天就開始學React!</h1>
  </div>
)

// 輸出元件
export default App

// -------------------------------------

import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';

ReactDOM.render(<App />, document.getElementById('root'));
registerServiceWorker();

// -------------------------------------
