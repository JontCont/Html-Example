// -------------------------------------

function reqListener() {
  const data = JSON.parse(this.responseText)
  console.log(data)
}

function reqError(err) {
  console.log('Fetch Error :-S', err)
}

const oReq = new XMLHttpRequest()
oReq.onload = reqListener
oReq.onerror = reqError
oReq.open('get', './sample.json', true)
oReq.send()

// -------------------------------------

// 使用 $.ajax() 方法
$.ajax({

    // 進行要求的網址(URL)
    url: './sample.json',

    // 要送出的資料 (會被自動轉成查詢字串)
    data: {
        id: 'a001'
    },

    // 要使用的要求method(方法)，POST 或 GET
    type: 'GET',

    // 資料的類型
    dataType : 'json',
})
  // 要求成功時要執行的程式碼
  // 回應會被傳遞到回調函式的參數
  .done(function( json ) {
     $( '<h1>' ).text( json.title ).appendTo( 'body' );
     $( '<div class=\'content\'>').html( json.html ).appendTo( 'body' );
  })
  // 要求失敗時要執行的程式碼
  // 狀態碼會被傳遞到回調函式的參數
  .fail(function( xhr, status, errorThrown ) {
    console.log( '出現錯誤，無法完成!' )
    console.log( 'Error: ' + errorThrown )
    console.log( 'Status: ' + status )
    console.dir( xhr )
  })
  // 不論成功或失敗都會執行的回調函式
  .always(function( xhr, status ) {
    console.log( '要求已完成!' )
  })

// -------------------------------------

fetch('http://abc.com/', { method: 'get' })
.then(function(response) {
    //處理回應(response)
}).catch(function(err) {
	// 處理錯誤(Error)
})

// -------------------------------------

fetch(request).then(response => {
  //ok 代表狀態碼在範圍 200-299
  if (!response.ok) throw new Error(response.statusText)
  return response.json()
}).catch(function(err) {
	// 處理錯誤(Error)
})

// -------------------------------------

function processStatus(response) {
    // 狀態 "0" 是處理本地檔案 (例如Cordova/Phonegap等等)
    if (response.status === 200 || response.status === 0) {
        return Promise.resolve(response)
    } else {
        return Promise.reject(new Error(response.statusText))
    }
}

fetch(request)
    .then(processStatus)
    .then()
    .catch()

// -------------------------------------

const req = new Request(URL, {method: 'GET', cache: 'reload'})

fetch(req).then(function(response) {
  //處理 response
}).catch(function(err) {
	// Error :(
})

// -------------------------------------

const postReq = new Request(req, {method: 'POST'})

// -------------------------------------

var url = new URL("https://geo.example.org/api"),
    params = { lat:35.696233, long:139.570431 }
Object.keys(params).forEach(key => url.searchParams.append(key, params[key]))
fetch(url).then(/* … */)

// -------------------------------------

const httpHeaders = { 'Content-Type' : 'image/jpeg', 'Accept-Charset' : 'utf-8', 'X-My-Custom-Header' : 'fetch are cool' }
const myHeaders = new Headers(httpHeaders)

const req = new Request(URL, {headers: myHeaders})

// -------------------------------------

const httpHeaders = new Headers()
httpHeaders.append('Accept', 'application/json')

const req = new Request(URL, {headers: httpHeaders})

// -------------------------------------

fetch('./sample.json', {
	method: 'GET',
	mode: 'cors',
	redirect: 'follow',
	headers: new Headers({
		'Content-Type': 'text/json'
	})
}).then(function(response) {
  //處理 response
})

// -------------------------------------

fetch('/next/page')
  .then(function(response) {
    return response.text()
  }).then(function(text) {
  	console.log(text)
  }).catch(function(err) {
  	// Error :(
  })

// -------------------------------------

fetch('https://davidwalsh.name/demo/arsenal.json').then(function(response) {
	// 直接轉成JSON格式
	return response.json()
}).then(function(j) {
	// `j`會是一個JavaScript物件
	console.log(j)
}).catch(function(err) {
  // Error :(
})

// -------------------------------------

fetch('https://davidwalsh.name/flowers.jpg')
	.then(function(response) {
	  return response.blob();
	})
	.then(function(imageBlob) {
	  document.querySelector('img').src = URL.createObjectURL(imageBlob);
	})

// -------------------------------------

fetch('https://davidwalsh.name/submit', {
	method: 'post',
	body: new FormData(document.getElementById('comment-form'))
})

// -------------------------------------

fetch('https://davidwalsh.name/submit-json', {
	method: 'post',
	body: JSON.stringify({
		email: document.getElementById('email').value,
		answer: document.getElementById('answer').value
	})
})

// -------------------------------------

var MAX_WAITING_TIME = 5000;// in ms

var timeoutId = setTimeout(function () {
    wrappedFetch.reject(new Error('Load timeout for resource: ' + params.url));// reject on timeout
}, MAX_WAITING_TIME);

return wrappedFetch.promise// getting clear promise from wrapped
    .then(function (response) {
        clearTimeout(timeoutId);
        return response;
    });

// -------------------------------------

function consume(reader) {
  var total = 0
  return pump()
  function pump() {
    return reader.read().then(({done, value}) => {
      if (done) {
        return
      }
      total += value.byteLength
      log(`received ${value.byteLength} bytes (${total} bytes in total)`)
      return pump()
    })
  }
}

fetch("/music/pk/altes-kamuffel.flac")
  .then(res => consume(res.body.getReader()))
  .then(() => log("consumed the entire body without keeping the whole thing in memory!"))
  .catch(e => log("something went wrong: " + e))

// -------------------------------------
