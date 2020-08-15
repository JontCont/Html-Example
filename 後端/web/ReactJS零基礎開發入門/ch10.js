// -------------------------------------

counter++
x += 3
y = "Hello " + name

// -------------------------------------

3 + 5
true
1.9
x
x > y
'Hello World'

// -------------------------------------

const sum = function(value1, value2) {
  return value1 + value2
}

// -------------------------------------

let count = 1

let increaseAge = function(value) {
  return count += value
}

// -------------------------------------

// 不純粹(impure)，splice會改變到原陣列
const firstThree = function(arr) {
  return arr.splice(0,3)
}

// 純粹(pure)，slice會回傳新陣列
const firstThree = function(arr) {
  return arr.slice(0,3)
}

// -------------------------------------

const aArray = [1, 2, 3]
const bArray = [ ...aArray ]

// -------------------------------------

//注意它並非回傳長度，而是回傳最終的陣列結果
function purePush(aArray, newEntry) {
  return [ ...aArray, newEntry ]
}

const purePush = (aArray, newEntry) => [ ...aArray, newEntry ]

// -------------------------------------

//注意它並非像pop是回傳成員(值)，而是回傳最終的陣列結果
function purePop(aArray) {
  return aArray.slice(0, -1)
}

const purePush = aArray => aArray.slice(0, -1)

// -------------------------------------

//注意它並非像shift是回傳成員(值)，而是回傳最終的陣列結果
function pureShift(aArray){
  return aArray.slice(1)
}

const pureShift = aArray => aArray.slice(1)

// -------------------------------------

//注意它並非回傳長度，而是回傳最終的陣列結果
function pureUnshift(aArray, newEntry){
  return [ newEntry, ...aArray ]
}

const pureUnshift = (aArray, newEntry) => [ newEntry, ...aArray ]

// -------------------------------------

function pureSplice(aArray, start, deleteCount, ...items) {
  return [ ...aArray.slice(0, start), ...items, ...aArray.slice(start + deleteCount) ]
}

const pureSplice = (aArray, start, deleteCount, ...items) => (
  [ ...aArray.slice(0, start), ...items, ...aArray.slice(start + deleteCount) ]
)

// -------------------------------------

//無替代語法，只能拷貝出新陣列作sort
function pureSort(aArray, compareFunction) {
  return [ ...aArray ].sort(compareFunction)
}

const pureSort = (aArray, compareFunction) => [ ...aArray ].sort(compareFunction)

// -------------------------------------

//無替代語法，只能拷貝出新陣列作reverse
function pureReverse(aArray) {
  return [ ...aArray ].reverse()
}

const pureReverse = aArray => [ ...aArray ].reverse()

// -------------------------------------

function pureDelete (aArray, index) {
   return aArray.slice(0,index).concat(aArray.slice(index+1))
}

const pureDelete = (aArray, index) => (
  aArray.slice(0,index).concat(aArray.slice(index+1))
)

// -------------------------------------

function pureDeleteByValue(aArray, value) {
  return aArray.filter(function(v) {
      return v !== value
    })
}

const pureDeleteByValue = (aArray, value) => (
  aArray.filter((v) => v !== value)
)

function pureDeleteByIndex(aArray, index) {
  return aArray.filter(function(v, i) {
      return i !== index
    })
}

const pureDeleteByIndex = (aArray, index) => (
  aArray.filter((v, i) => i !== index)
)

// -------------------------------------

const obj = { a: 1 }
const copy = Object.assign({}, obj)

// -------------------------------------

// 例如 item = { foo:1 }
function updateProperty(obj, item) {
    return Object.assign({}, obj, item)
}

// -------------------------------------

// 例如 item = { foo:1 }
function updateProperty(obj, item) {
  return { ...obj, ...item }
}

// -------------------------------------

function deleteProperty(obj, key) {
    const newObj = Object.assign({}, obj)
    delete newObj[key]
    return newObj
}

// -------------------------------------

function deleteProperty(obj, key) {
    let  { [key]: deleted, ...newObj } = obj
    return newObj
}

// -------------------------------------
