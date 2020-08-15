// -------------------------------------

const promise = new Promise(function(resolve, reject) {
  // 成功時
  resolve(value)
  // 失敗時
  reject(reason)
})

promise.then(function(value) {
  // on fulfillment(已實現時)
}, function(reason) {
  // on rejection(已拒絕時)
})

// -------------------------------------

new Promise( function(resolve, reject) { ... } )

// -------------------------------------

new Promise( (resolve, reject) => { ... } )

// -------------------------------------

function asyncFunction(value) {
    return new Promise(function(resolve, reject){
        if(value)
            resolve(value) // 已實現，成功
        else
            reject(reason) // 有錯誤，已拒絕，失敗
    });
}

// -------------------------------------

const promise = new Promise()
//Uncaught TypeError: Promise resolver undefined is not a function

const promise = new Promise(function(){})
//不會有錯誤，但會產生一個完全無用的promise，無法改變狀態
//Promise {[[PromiseStatus]]: "pending", [[PromiseValue]]: undefined}

// -------------------------------------

p.then(onFulfilled, onRejected);

p.then(function(value) {
   // fulfillment
  }, function(reason) {
  // rejection
});

// -------------------------------------

const promise = new Promise(function(resolve, reject) {
  resolve(1)
})

promise.then(function(value) {
  console.log(value) // 1
  return value + 1
}).then(function(value) {
  console.log(value) // 2
  return value + 2
}).then(function(value) {
  console.log(value) // 4
})

// -------------------------------------

p.catch(onRejected);

p.catch(function(reason) {
   // rejection
});

// -------------------------------------

const p1 = new Promise((resolve, reject) => {
    resolve(4)
})

p1.then((val) => {
      console.log(val) //4
      return val + 2
  })
  .then((val) => {
      console.log(val) //6
      throw new Error('error!')
  })
  .catch((err) => {      //catch無法抓到上個promise的回傳值
      console.log(err.message)
      //這裡如果有回傳值，下一個then可以抓得到
      //return 100
  })
  .then((val) => console.log(val, 'done')) //val是undefined，回傳值消息

// -------------------------------------

// 用throw語句取代reject
const p1 = new Promise((resolve, reject) => {
    throw new Error('rejected!') // 用throw語句
    //相當於用以下的語句
    //reject(new Error('rejected!'))
})

// 下面為測試用的程式碼
p1.then((val) => {
        console.log(val)
        return val + 2
    })
  .then((val) => console.log(val))
  .catch((err) => console.log('error:', err.message))
  .then((val) => console.log('done'))

//最後結果:
//error: rejected!
//done

// -------------------------------------

const p1 = new Promise(function(resolve, reject){
     setTimeout(function(){
         // 這裡如果用throw，是完全不會拒絕promise
         reject(new Error('error occur!'))
         //throw new Error('error occur!')
     }, 1000)
})

p1.then((val) => {
        console.log(val)
        return val + 2
    }).then((val) => console.log(val))
    .catch((err) => console.log('error:', err.message))
    .then((val) => console.log('done'))

// -------------------------------------

async1()
  .then(() => async2())
  .then(() => async3())
  .catch((err) => errorHandler1())
  .then(() => async4(), (err) => errorHandler2())
  .catch((err) => console.log('Don\'t worry about it'))
  .then(() => console.log('All done!'))

// -------------------------------------

async1()
    .then(() => async2(), undefined)
    .then(() => async3(), undefined)
    .then(undefined, (err) => errorHandler1())
    .then(() => async4(), (err) => errorHandler2())
    .then(undefined, (err) => console.log('Don\'t worry about it'))
    .then(() => console.log('All done!'), undefined)

// -------------------------------------

Promise.resolve("Success").then(function(value) {
  console.log(value) // "Success"
}, function(value) {
  // 不會被呼叫
})

// -------------------------------------

Promise.reject(new Error("fail")).then(function(error) {
  // 不會被呼叫
}, function(error) {
  console.log(error); // Stacktrace
});

// -------------------------------------

//方式一: 使用Promise建構式

function initPromise1(someObject) {

    return new Promise(function(resolve) {
        if (typeof someObject !== 'object')
            throw new Error('error occured')
        else
            resolve(someObject);
    });
}

//方式二: 使用Promise.resolve+throw

function initPromise2(someObject) {
    if (typeof someObject !== 'object')
        throw new Error('error occured')
    else
        return Promise.resolve(someObject)
}

//方式三: 使用Promise.resolve+Promise.reject

function initPromise3(someObject) {
    if (typeof someObject !== 'object')
        return Promise.reject(new Error('error occured'))
    else
        return Promise.resolve(someObject)
}

//測試用
initPromise1(1).then((value) => {
    console.log(value)
}).catch((err) => {
    console.log(err.message)
})

// -------------------------------------

const p1 = Promise.resolve(3)
const p2 = 1337
const p3 = new Promise((resolve, reject) => {
  setTimeout(() => resolve('foo'), 1000)
});

Promise.all([p1, p2, p3]).then((value) => {
    console.log(value)
}).catch((err) => {
    console.log(err.message)
})

//結果: [3, 1337, "foo"]

// -------------------------------------

Promise.all('i am a string').then((value) => {
    console.log(value)
}).catch((err) => {
    console.log(err.message)
})

//結果: ["i", " ", "a", "m", " ", "a", " ", "s", "t", "r", "i", "n", "g"]

// -------------------------------------

const p1 = Promise.resolve(3)
const p2 = 1337
const p3 = new Promise((resolve, reject) => {
  setTimeout(() => resolve('foo'), 1000)
});

Promise.race([p1, p2, p3]).then((value) => {
    console.log(value)
}).catch((err) => {
    console.log(err.message)
})

// -------------------------------------

const p1 = new Promise((resolve, reject) => {
  setTimeout(() => resolve('p1'), 2000, )
});
const p2 = new Promise((resolve, reject) => {
  setTimeout(() => resolve('p2'), 1000, 'p2')
});
const p3 = new Promise((resolve, reject) => {
  setTimeout(() => resolve('p3'), 500, 'p3')
});

Promise.race([p1, p2, p3]).then((value) => {
    console.log(value)
}).catch((err) => {
    console.log(err.message)
})

// -------------------------------------
