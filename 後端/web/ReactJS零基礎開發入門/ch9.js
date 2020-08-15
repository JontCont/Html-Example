// -------------------------------------
// 模組樣式
var feature = (function() {

    // 私有的變數與函式
    var privateThing = "secret"
    var publicThing = "not secret"

    var changePrivateThing = function() {
        privateThing = "super secret"
    };

    var sayPrivateThing = function() {
        console.log( privateThing )
        changePrivateThing()
    };

    // 公開的API
    return {
        publicThing: publicThing,
        sayPrivateThing: sayPrivateThing
    }
})()

feature.publicThing // 公開部份的存取

// 透過公開的API來存取私有的變數
feature.sayPrivateThing()

// -------------------------------------

export const aString = 'test'

export function aFunction(){
  console.log('function test')
}

export const aObject = {a: 1}

export class aClass {
  constructor(name, age){
    this.name = name
    this.age = age
  }
}

// -------------------------------------

import { aString, aObject, aFunction, aClass } from './lib'

console.log(aString)
console.log(aObject)

// -------------------------------------

import * as myModule from './lib'

console.log(myModule.aString)
console.log(myModule.aObject)

myModule.aFunction()

const newObj = new myModule.aClass('Inori', 16)
console.log(newObj)

// -------------------------------------

// module1.js
function aFunction(param) {
  return param * param
}

export default aFunction

// -------------------------------------

// module1.js
export default function (param) {
  return param * param
}

// -------------------------------------

// module2.js
import aFunction from './module1'

console.log(aFunction(5))

// -------------------------------------

// module2.js
import square from './module1'

console.log(square(5))

// -------------------------------------

// module2.js
import { default as square } from './module1'

console.log(square(5))

// -------------------------------------

// module1.js
export const x = 10
export const y = 44
export default function (a, b) {
   return a + b
}

// -------------------------------------

// module2.js
import sum, { x, y } from './module1'

console.log(sum(x, y))

// -------------------------------------

// module2.js
import { default as sum, x, y } from './module1'

console.log(sum(x, y))

// -------------------------------------

// module2.js
import sum from './module1'
import { x, y } from './module1'

console.log(sum(x, y))

// -------------------------------------

export let x = 42                  // 輸出一個變數識別名
export function foo() {}           // 輸出一個函式識別名
export default 42                  // 輸出一個預設值
export default aFunction           // 輸出一個已存在的識別名，為預設輸出
export default function foo() {}   // 輸出一個預設值，是個函式定義
export { decrypt as dec }          // 輸出一個已存在的識別名，改用新的識別名

// -------------------------------------

import aFunc from './module1'              // 匯入模組的預設的輸出部份，並使用aFunc作為識別名稱
import { foo, bar } from './module1'       // 匯入模組的兩個識別名稱
import { foo as xFoo } from './module1'    // 匯入模組的一個識別名稱，用不同的識別名取代
import * as myModule from './module1'      // 匯入整個模組，改用不同的識別名

// -------------------------------------
