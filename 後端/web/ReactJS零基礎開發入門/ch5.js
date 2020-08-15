// -------------------------------------

const params = [ "hello", true, 7 ]
const other = [ 1, 2, ...params ] // [ 1, 2, "hello", true, 7 ]

// -------------------------------------

const arr1 = [1,2,3]
const arr2 = [...arr1]

arr2.push(4) //不會影響到arr
// -------------------------------------

function sum(a, b, c) {
  return a + b + c
}
const args = [1, 2, 3]
sum(…args) // 6

// -------------------------------------

function sum(a, b, c) {
  return a + b + c
}

var args = [1, 2, 3]
sum.apply(undefined, args)// 6

// -------------------------------------

const aString = "foo"
const chars = [ ...aString ] // [ "f", "o", "o" ]

// -------------------------------------

function aFunc(x){
  console.log(arguments)
  console.log(Array.isArray(arguments))

  //轉為真正的陣列
  const arr = [...arguments]
  console.log(arr)
  console.log(Array.isArray(arr))
}

aFunc(1)

// -------------------------------------

function sum(…numbers) {
  const result = 0

  numbers.forEach(function (number) {
    result += number
  })

  return result
}

sum(1) // 1
sum(1, 2, 3, 4, 5) // 15

// -------------------------------------

function aFunc(x, ...y){
  console.log('x =', x,  ', y = ' , y)
}

aFunc(1,2,3) //x = 1, y = [2, 3]
aFunc() //x = undefined, y = []

// -------------------------------------

const [x, y, z] = [1, 2, 3]

console.log(x) //1

// -------------------------------------

const [x, ...y] = [1, 2, 3]

console.log(x) //1
console.log(y) //[2,3]

// -------------------------------------

const [x, y, ...z] = [1]

console.log(x) //1
console.log(y) //undefined
console.log(z) //[]

// -------------------------------------

function f(...[a, b, c]) {
  return a + b + c
}

f(1)          // NaN (1 + undefined + undefined)
f(1, 2, 3)    // 6
f(1, 2, 3, 4) // 6 (第4個傳入值沒有對應的變數識別名，因此跳過)

// -------------------------------------

function f(...arr) {
  return arr[0] + arr[1] + arr[2]
}

// -------------------------------------

function f(...arr) {
  const [a, b, c] = arr
  return a + b + c
}

// -------------------------------------

function f([a, b, c]) {
  return a + b + c
}
f([1])          // NaN
f([1, 2, 3])    // 6
f([1, 2, 3, 4]) // 6

// -------------------------------------

const x = { b: 3, c: 4 }
const y = { ...x }
y // { b: 3, c: 4 }

const x = { a: 1, b: 2}
const y = { a: 10, ...x }
y //{a: 10, b: 2}

// -------------------------------------
