// -------------------------------------

//用邏輯或符號(||)
const link = function (point, url) {
    let point = point || 10
    let url = url || 'http://google.com'
    ...
}

//另一種設定的方式，typeof是回傳類型的字串值
const link = function (point, url) {
    let point = typeof point !== 'undefined' ? point : 10
    let url = typeof url !== 'undefined' ? url : 'http://google.com'
    ...
}

// -------------------------------------

'foo' || 'bar' // 'foo'
false || 'bar' // 'bar'

// -------------------------------------

if (isValid) {
  // 如果合法的話
}


if (!name) {
  // 如果名字有填寫的話
}


if (!collection.length) {
  // 如果陣列等集合裡面有包含成員的話
}

// -------------------------------------

let a = 1 && 2  // a = 2
let b = 0 && 2 && 3 // a = 0
let c = true  && false // c = false

// -------------------------------------

const aArray = [1, 2, 3]
let x = (aArray.length > 0) && 100  //x = 100

// -------------------------------------

const aArray = [1, 2, 3]
let x = 0

if(aArray.length > 0) {
  x =  100
} else {
  x = aArray.length > 0
}

// -------------------------------------

const link = function (point = 10, url = 'http://google.com') {
    //...
}

// -------------------------------------

function foo(a = 0, b = a + 100) {
  console.log(a + b)
}

foo() // 100
foo(1)  // 102
foo(1, 2) // 3

// -------------------------------------

function go(x) {
  return x + 10
}

function foo(a = 1, b = go(a)) {
  console.log(a+b)
}

foo()  // 30
foo(1)  // 12
foo(1, 2) // 3

// -------------------------------------

function foo(x = []) {
  x.push(1)
  console.log(x)
}

foo() // [1]
foo() // [1]
foo() // [1]

// -------------------------------------

let x = 1

function foo(x, y = x) {
  console.log(y)
}

foo(2) // 2

// -------------------------------------

function foo(x = y, y = 1) {
  console.log(y)
}

foo(1) // 這不會有錯誤
foo(undefined, 1) // 錯誤 ReferenceError: y is not defined
foo() // 錯誤 ReferenceError: y is not defined

// -------------------------------------

function foo(x = this, y = this.value) {
  console.log(x)
  console.log(y)
}

foo()
foo({value: '= =+'})
foo.call({value: '^^y~'})

// -------------------------------------
//方式一
function func1(x){
  if(x === undefined) throw new Error('Missing parameter')

  //...
}

//方式二
function throwIfMissing() {
    throw new Error('Missing parameter');
}

function func2(x = throwIfMissing()){
  //...
}

// -------------------------------------


// 壞寫法
function handleThings(opts = {}, name) {
  // ...
}

// 好寫法
function handleThings(name, opts = {}) {
  // ...
}
// -------------------------------------

const func = (x = 100) => x * 2

// -------------------------------------

function func({a, b} = {a: 1, b: 2}) {
  console.log(a, b)
}

func() // 1 2
func({a: 5})  // 5 undefined
func({a: 10, b: 22}) // 10 22

// -------------------------------------

function func({a = 1, b = 2} = {}) {
  console.log(a, b)
}

func() // 1 2
func({a: 5})  // 5 2
func({a: 10, b: 22}) // 10 22

// -------------------------------------
