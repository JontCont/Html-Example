// -------------------------------------

//基本用法
const [a, b] = [1, 2] //a=1, b=2

//先宣告後指定值，要用let才行
let a, b
;[a, b] = [1, 2]

// 略過某些值
const [a, , b] = [1, 2, 3] // a=1, b=3

// 其餘運算
const [a, ...b] = [1, 2, 3] //a=1, b=[2,3]

// 失敗保護
const [, , , a, b] = [1, 2, 3] // a=undefined, b=undefined

// 交換值
let a = 1, b = 2
;[b, a] = [a, b] //a=2, b=1

// 多維複雜陣列
const [a, [b, [c, d]]] = [1, [2, [[[3, 4], 5], 6]]]

// 字串
const [a, b, c, d, e] = "hello"

// -------------------------------------

// 基本用法
const { user: x } = { user: 5 } // x=5

// 失敗保護
const { user: x } = { user2: 5 } //x=undefined

// 賦予新的變數名稱
const { prop: x, prop2: y } = { prop: 5, prop2: 10 } // x=5, y=10

// 屬性賦值語法
const { prop: prop, prop2: prop2 } = { prop: 5, prop2: 10 } //prop=5, prop2=10

// 相當於上一個例子的簡短語法(Short-hand syntax)
const { prop, prop2 } = { prop: 5, prop2: 10 } //prop = 5, prop2=10

// ES7+的物件屬性其餘運算符
const { a, b, ...rest } = { a:1, b:2, c:3, d:4 } //a=1, b=2, rest={c:3, d:4}

// -------------------------------------

// 錯誤的示範
let a, b
{ a, b } = {a: 1, b: 2}

// -------------------------------------

let a, b
({ a, b } = {a: 1, b: 2}) //a=1, b=2

// -------------------------------------

// 混用物件與陣列
const { prop: x, prop2: [, y] } = {prop: 5, prop2: [10, 100]}
console.log(x, y) // => 5 100

// 複雜多層次的物件
const {
  prop: x,
  prop2: {
    prop2: {
      nested: [ , , b]
    }
  }
} = { prop: "Hello", prop2: { prop2: { nested: ["a", "b", "c"]}}}

console.log(x, b) // => Hello c

// -------------------------------------

const [a] = undefined
const {b} = null
// (錯誤) TypeError: Invalid attempt to destructure non-iterable instance

// -------------------------------------

const {a} = false // undefined
const {b} = 10 // undefined
const {c} = 'hello' // undefined

// -------------------------------------

const [a] = false // TypeError
const [b] = 10 // TypeError
const [c] = 'hello' //c="h"

// -------------------------------------
const [missing = true] = []
console.log(missing) // true

const { message: msg = 'default value' } = {}
console.log(msg) // default value

const { x = 3 } = {}
console.log(x) // 3

// -------------------------------------

const { a ='hello' } = 'hello'
const [ b ='hello' ] = 'hello'

console.log( a, b)

// -------------------------------------

function func({a, b}) {
  return a + b
}

func({a: 1, b: 2}) // 3

// -------------------------------------

function func({a = 3, b}) {
  return a + b
}

func({a: 1, b: 2}) // 3
func({b: 2}) // 5
func({a: 1}) // NaN
func({}) // NaN
func() // TypeError

// -------------------------------------

function func({a = 3, b = 5}) {
  return a + b
}

func({a: 1, b: 2}) // 3
func({a: 1}) // 6
func({b: 2}) // 5
func({}) // 8
func() // TypeError: Cannot match against 'undefined' or 'null'

// -------------------------------------

function func({a = 3, b = 5} = {}) {
  return a + b
}

func({a: 1, b: 2}) // 3
func({a: 1}) // 6
func({b: 2}) // 5
func({}) // 8
func() // 8

// -------------------------------------

function func({ a = 3, b = 5 } = { a: 7, b: 11 }) {
  return a + b
}

func({a: 1, b: 2}) // 3
func({a: 1}) // 6
func({b: 2}) // 5
func({}) // 8
func() // 18

// -------------------------------------

function func({ a = 1, b = 2 } = { a: 10, b: 20 }) {
  return a + b
}

func({a: 3, b: 5}) // 8
func({a: 3}) // 5
func({b: 5}) // 6
func({a: null}) // 2
func({b: null}) // 1
func({a: undefined}) // 3
func({b: undefined}) // 3
func({}) // 3
func() // 30

// -------------------------------------

function g(a = 1, b = 2) {
  return a + b
}

g(3, 5) // 8
g(3) // 5
g(5) // 7
g(undefined, 5) // 6
g(null, 5) // 5
g() // 3

// -------------------------------------

const NavigationExampleRow = require('./NavigationExampleRow');
const React = require('react');
const ReactNative = require('react-native');

// 這是取得ReactNative其中包含內建模組的一種語法
const {
  NavigationExperimental,
  ScrollView,
  StyleSheet,
} = ReactNative;

// 這是取得NavigationExperimental其中所包含的
// NavigationCardStack與NavigationStateUtils物件的語法
const {
  CardStack: NavigationCardStack,
  StateUtils: NavigationStateUtils,
} = NavigationExperimental;

// -------------------------------------

const obj = { a: 1, b: 2 }
const { a: x, b: y } = obj //x=1, y=2

// -------------------------------------

const obj = {a: 1, b: 2}
const { a, b } = obj //a=1, b=2

//上面的語句相當於下面的寫法
const { a: a, b: b } = obj

// -------------------------------------

class DataModal extends Component {
  render() {
    const { modalList, location: { pathname } } = this.props
    const { currIndex, showModal } = this.state
    // ..
  }
}

// -------------------------------------

function DataProcess({ onClickButton, stepCurrent }) {
  return (
    <div>
      <h2>Step {stepCurrent}</h2>
      <Button onClick={onClickButton}>Click</Button>
    </div>
  )
}

// -------------------------------------

function DataProcess(props) {

  const onClickButton = props.onClickButton
  const stepCurrent = props.stepCurrent

  return (
    <div>
      <h2>Step {stepCurrent}</h2>
      <Button onClick={onClickButton}>Click</Button>
    </div>
  )
}

// -------------------------------------
