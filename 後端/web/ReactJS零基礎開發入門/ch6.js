// -------------------------------------

const emptyObject = {}

const player = {
    fullName: 'Inori',
    age: 16,
    gender: 'girl',
    hairColor: 'pink',
    sing: function() {
      console.log('lalala')
    }
}

// -------------------------------------

const aArray = []
const aObject = {}

const bArray = ['foo', 'bar']
const bObject = {
    firstKey: 'foo',
    secondKey: 'bar'
}

bArray[2] = 'yes'
bObject.thirdKey = 'yes'

console.log(bArray[2]) //yes
console.log(bObject.thirdKey) //yes

// -------------------------------------

function foo(a, b) {
    return {result: 'success', a: a, b: b}
}

var a = 'foo', b = 42, c = {}
var o = { a: a, b: b, c: c }

// -------------------------------------

function foo(a, b) {
    return {result: 'success', a, b}
}

var a = 'foo', b = 42, c = {}
var o = { a, b, c }

// -------------------------------------

var a = 10
var b = [a]

// -------------------------------------

function addTodo(text) {
  return {
    type: ADD_TODO,
    text
  }
}

// -------------------------------------

var player = {
    fullName: 'Eddy',
    sayName: function() {
        console.log(this.fullName)
    }
}

// -------------------------------------

var player = {
    fullName: 'Eddy',
    sayName() {
        console.log(this.fullName)
    }
}

// -------------------------------------

const player = {
    fullName: 'Eddy',
    sayName(word = 'Hi') {
        console.log(word + ' ' + this.fullName)
    }
}

player.sayName()
player.sayName('Hello')

// -------------------------------------

const prop = 'foo'

const o = {
  [prop]: 'hey',
  ['b' + 'ar']: 'there',
}

console.log(o) //Object {foo: "hey", bar: "there"}

// -------------------------------------

// 這是錯誤的例子
const prop = 'foo'

const o = {
  [prop]
}

// -------------------------------------

const obj = { a: 1 }
const copy = Object.assign({}, obj)

// -------------------------------------

const o1 = { a: 1, b: 1, c: 1 }
const o2 = { b: 2, c: 2 }
const o3 = { c: 3 }

const obj = Object.assign({}, o1, o2, o3)
console.log(obj) // { a: 1, b: 2, c: 3 }

// -------------------------------------

MyClass.prototype.foo = function (arg1, arg2) {
        //...
    }

// -------------------------------------

Object.assign(MyClass.prototype, {
        foo(arg1, arg2) {
            //...
        }
})

// -------------------------------------
