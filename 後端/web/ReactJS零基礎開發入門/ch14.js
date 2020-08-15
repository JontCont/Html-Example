// -------------------------------------

import React from 'react'

class App extends React.Component {
  render() {
    return (
      <div>
        <button onClick={() => { alert('Thank you') }}>Say Hello</button>
      </div>
    )
  }
}

export default App

// -------------------------------------

class App extends React.Component {

  handleButtonClick() {
    alert('Thank you')
  }

  render() {
    return (
      <div>
        <button onClick={this.handleButtonClick}>Say Hello</button>
      </div>
    )
  }
}

// -------------------------------------

class App extends React.Component {
  render() {
    return (
      <div>
        <h1>今天就開始學React!</h1>
      </div>
    )
  }
}

// -------------------------------------

"use strict";

React.createElement(
        "div",
        null,
        React.createElement(
                "h1",
                null,
                "\u4ECA\u5929\u5C31\u958B\u59CB\u5B78React!"
        )
);

// -------------------------------------

class App extends React.Component {
  render() {
    return (
      <div>
        <ul>
          <li><a href="http://google.com">Google</a></li>
          <li><a href="http://apple.com">Apple</a></li>
          <li><a href="http://amazon.com">Amazon</a></li>
        </ul>
      </div>
    )
  }
}

// -------------------------------------

const child = React.createElement('li', null, '項目')
const root = React.createElement('ul', { className: 'my-list' }, child)

ReactDOM.render(root, document.getElementById('root'))

// -------------------------------------

<ul data-reactroot="" class="my-list">
  <li>項目</li>
</ul>

// -------------------------------------

{
  type: 'ul',
  props: {
    className: 'my-list',
    children: {
      type: 'li',
      props: {
        children: '項目'
      }
    }
  }
}

// -------------------------------------

const root =  <ul className='my-list'><li>項目</li></ul>

// -------------------------------------

// 正確示範!!
render() {
  return (
    <div>
      Some text.
      <div>Test</div>
      <div>Test 2</div>
    </div>
  )
}

// -------------------------------------

React.createElement(
  'div',
  null,
  React.createElement(
    'div',
    null,
    'Test'
  ),
  React.createElement(
    'div',
    null,
    'Test 2'
  )
)

// -------------------------------------

const todoItems = todos.map((todo) =>
  <li key={todo.id}>
    {todo.text}
  </li>
);

// -------------------------------------

const listItems = numbers.map((number) =>
  <ListItem key={number.id} value={number} />
)

return (
  <ul>
    {listItems}
  </ul>
)

// -------------------------------------

render() {
  return 'Some text.'
}

// -------------------------------------

render() {
  return [
    'Some text.',
    <div key="A">Test</div>,
    <div key="B">Test 2</div>
  ]
}

// -------------------------------------

const Fragment = React.Fragment
//...
render() {
  return (
    <Fragment>
      Some text.
      <div>Test</div>
      <div>Test 2</div>
    </Fragment>
  )
}

// -------------------------------------

render() {
  return (
    <>
      Some text.
      <div>Test</div>
      <div>Test 2</div>
    </>
  )
}

// -------------------------------------

const components = {
  facebook: FacebookButton,
  line: LineButton
}

function SocialShare(props) {
  // 需要轉換為開頭大寫英文的識別名稱
  const SocialShareButton = components[props.socialType]
  return <SocialShareButton id={props.id} />
}

// -------------------------------------

<TodoItem text="buy book" index="1" />

// -------------------------------------

<TodoItem text={'play game'} index="1" />

// -------------------------------------

<ul>
{
  this.state.items.map((value, index) => {
    return <TodoItem key={index} text={value} />
  })
}
</ul>

// -------------------------------------

<input
  type="text"
  value={this.state.value}
  placeholder={this.props.initText}
  onChange={this.handleChange}
/>

// -------------------------------------

value={123 + 456}

value={true}

<Hello name={{ firstname: 'John', lastname: 'Doe' }} />

<span key={index} style={{
    color: 'red',
    paddingRight: '10px'
}}>{"text"}</span>

// -------------------------------------

value={this.state.value}

defaultValue={this.props.initText}

onChange={this.handleChange}

// -------------------------------------
const arr = [
  <h1>Hello world!</h1>,
  <h2>React is awesome</h2>
]

ReactDOM.render(
  <div>{arr}</div>,
  document.getElementById('root')
)

// -------------------------------------

{
  this.props.results.map((result) => (
      <ListItemWrapper data={result}/>
  ))
}

// -------------------------------------

const TodoList = ({ todos, onTodoClick }) => (
  <ul>
    {todos.map(todo =>
      <Todo
        key={todo.id}
        {...todo}
        onClick={() => onTodoClick(todo.id)}
      />
    )}
  </ul>
)

// -------------------------------------

<Person name={window.isLoggedIn ? window.name : ''} />

<Container>{window.isLoggedIn ? <Nav /> : <Login />}</Container>

// -------------------------------------

const props = {}
props.foo = x
props.bar = y
const component = <Component {...props} />

// -------------------------------------
//babel轉換
var component = React.createElement(Component, props);

// -------------------------------------
const component = <Component {...props} {...state}/>

// -------------------------------------

<TodoItem text="a string" index="1" />

// -------------------------------------

<TodoItem text={'a string'} index={'1'} />

// -------------------------------------

<TodoItem text={'a string' + 'other string'} index={1} />

// -------------------------------------

<input autoFocus type="text" />

// -------------------------------------

<input autoFocus={true} type="text" />

// -------------------------------------

// 使用JSX語法
ReactDOM.render(<div>{'<span>a string</span>'}</div>, document.getElementById('root'))

//HTML碼的字串會被跳脫為 &lt;span&gt;a string&lt;/span&gt;

// -------------------------------------

const props = {foo: 1, bar: 2}
const component = <Component {...props} />

// -------------------------------------

const divStyle = {
  color: 'blue',
  fontSize: 16,
}

const TodoItem = (props) => <div style={divStyle}>{props.text}</div>

ReactDOM.render(<TodoItem text="Text" />, document.getElementById('root'))

// -------------------------------------

<div data-reactroot="" style="color: blue; font-size: 16px;">Text</div>

// -------------------------------------

<MyComponent>Hello world!</MyComponent>

// -------------------------------------

<MyComponent>{'Hello world!'}</MyComponent>

// -------------------------------------

<MyComponent>Hello world! {prop.text}</MyComponent>

// -------------------------------------
<div>Hello World</div>

<div>
  Hello World
</div>

<div>
  Hello
  World
</div>

<div>

  Hello World
</div>

// -------------------------------------
<MyContainer>
  <MyFirstComponent />
  <MySecondComponent />
</MyContainer>

// -------------------------------------

const TodoItem = (props) => <div>{props.children('Eddy')}</div>

ReactDOM.render(
  <TodoItem>
    {(name) => <div>Hello! {name}</div>}
  </TodoItem>,
   document.getElementById('root'))

// -------------------------------------
function Mailbox(props) {
  const unreadMessages = props.unreadMessages;
  return (
    <div>
      <h1>Hello!</h1>
      {
        unreadMessages.length > 0 &&
        <h2>
          You have {unreadMessages.length} unread messages.
        </h2>
      }
    </div>
  )
}

// -------------------------------------

<div custom-attribute="some-value" />

// -------------------------------------
