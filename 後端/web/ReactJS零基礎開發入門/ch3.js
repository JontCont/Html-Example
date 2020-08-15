// -------------------------------------

//函式定義(FD) - 使用有名稱的函式
function sum(a, b){
    return a + b
}

//函式表達式(FE) - 常數指定為匿名函式
const sum = function(a, b) {
    return a + b
}

// -------------------------------------

const newValue = sum(100,0)
console.log(sum(99, 1))

// -------------------------------------

//函式定義(FD)
console.log(sum(1, 2)) // 3

function sum(a, b){
    return a + b
}

//函式表達式(FE)
console.log(sum(1, 2)) // ReferenceError: sum is not defined

const sum = function(a, b) {
    return a + b
}

// -------------------------------------

// 標準的函式表達式宣告
const bar = function foo() { console.log('Test') }

// 作為另一函式的傳入參數值
const doubles = numbers.map(function(num) {
  return num * 2
})

// 立即呼叫函式表達式(IIFE)語法
;(function(message){
  console.log(message)
})('Hello')

// -------------------------------------

const sum = (a, b) =>  a + b

// -------------------------------------

const func = (x) => x + 1

// -------------------------------------

const func = function (x) { return x + 1 }

// -------------------------------------

const funcA = x => x + 1
const funcB = x => { x + 1 }

funcA(1) //2
funcB(1) //undefined

// -------------------------------------

// !! 注意: 不建議這樣寫 !!
const funcA = x =>
x + 1

// !! 注意: 不建議這樣寫 !!
const funcB =
x =>
x + 1

// -------------------------------------

const HelloWorld = (props) => (
  <div>
    <h1>{props.text}</h1>
  </div>
)

// -------------------------------------

"use strict";

var HelloWorld = function HelloWorld(props) {
  return React.createElement(
    "div",
    null,
    React.createElement(
      "h1",
      null,
      props.text
    )
  );
};

// -------------------------------------

class HelloWorld extends React.Component {
    render() {
        return (
          <div>
            <h1>{props.text}</h1>
          </div>
        )
    }
}

// -------------------------------------

const obj = { a:1 }

function func() {

  setTimeout( () => {
    // 這裡`this`會以詞法上的func中為預設
    console.log(this.a)
  }, 2000)
}

func.call(obj)

// -------------------------------------

const obj = { a: 1 }

function func() {

  setTimeout( function() {
    // 這裡`this`，會是這個callback的自己本地(local)綁定值
    // this為window物件(嚴格模式為undefined)
    // this.a必是undefined
    console.log(this.a)
  }, 2000)
}

func.call(obj)

// -------------------------------------

const obj = { a: 1 }

function func(){

  // 這裡用一個常數that先捕捉到this，讓它到作用域鏈上
  const that = this

  setTimeout(
    function(){
      // 這裡可以存取得到that
      console.log(that)
    }, 2000)
}

func.call(obj) //Object {a: 1}

// -------------------------------------

const calculate = {
  array: [1, 2, 3],
  sum: () => {
    return this.array.reduce((result, item) => result + item)
  }
}

//錯誤: TypeError: Cannot read property 'array' of undefined
calculate.sum()

// -------------------------------------

function MyCat(name) {
  this.catName = name
}

MyCat.prototype.sayCatName = () => {
  return this.catName
}

cat = new MyCat('Mew')

cat.sayCatName() // undefined

// -------------------------------------

const button = document.getElementById('myButton')

button.addEventListener('click', () => {
  this.innerHTML = 'Clicked button'
})

// -------------------------------------

const Message = (text) => {
  this.text = text
}

// 錯誤 Throws "TypeError: Message is not a constructor"

const helloMessage = new Message('Hello World!');

// -------------------------------------
