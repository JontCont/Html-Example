
let foo = 42    // foo現在是Number資料類型
let foo = 'bar' // foo現在是String資料類型
let foo = true // foo現在是Boolean資料類型

// -------------------------------------

typeof 37 // 'number'
typeof '' // 'string'
typeof true // 'boolean'
typeof {} // 'object'
typeof [] // 'object'
typeof null // 'object'
typeof function(){} //'function'

// -------------------------------------

Object.prototype.toString.call([1, 1, 1]) //"[object Array]"
Object.prototype.toString.call(new Date()) //"[object Date]"
Object.prototype.toString.call(/a-z/) //"[object RegExp]"
Object.prototype.toString.call(new Error('Whoops!')) //"[object Error]"

// -------------------------------------

typeof x //undefined
var x = 1

typeof y //Uncaught ReferenceError
let y = 1

// -------------------------------------

a = 10
this.a = 10
window.a = 10
var a = 10

// -------------------------------------

function test(){
  var a = 10
}

if(true){
  var b = 20
}

console.log(a) // a is not defined 存取不到
console.log(b) // 存取得到

// -------------------------------------

function test() {
  let a = 10
}

if (true) {
  const b = 20
}

console.log(a) // a is not defined 存取不到
console.log(b) // b is not defined 存取不到

// -------------------------------------

const a = 10
a = 20  // TypeError: Assignment to constant variable. 錯誤

// -------------------------------------

const a = [] //宣告一個陣列
a[0] = 1

const b = {} //宣告一個物件
b.foo = 123

// -------------------------------------

for (let i = 0; i < 10; i++) {
  console.log('in for statement: i', i)
}

console.log(i) // ReferenceError: i is not defined(…) 存取不到

// -------------------------------------

for (var i = 0; i < 3; i++) {
  setTimeout(function () { console.log('i:',i) }, 1000)
}

// 最後結果
i:3
i:3
i:3

// -------------------------------------

for (let i = 0; i < 3; i++) {
  setTimeout(function () { console.log('i:',i) }, 1000)
}

// 最後結果
i:0
i:1
i:2

// -------------------------------------

let k
for (k = 0; k < 3; k++) {
    let i = k //注意這裡，每次循環都會建立一個新的i變數
    setTimeout(function () { console.log('i:',i) }, 1000)
}

// -------------------------------------

var foo

;(function(){
    foo = 1    // 此步驟時，沒有要綁定的
    var foo   // 清除之前綁定的，然後新建立一個宣告，指定值為undefined
    foo = 2   // 此步驟時，沒有要綁定的
})()

// -------------------------------------

let x = 'outer scope'

;(function() {
    console.log(x)
}())

// -------------------------------------

let x = 'outer scope'

;(function() {
    console.log(x)
    let x = 'inner scope' //多加這行程式碼
}())

// -------------------------------------
