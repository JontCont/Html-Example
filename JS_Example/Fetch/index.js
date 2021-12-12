let url =
  'https://randomuser.me/api/';

fetch(url,{}).then((rep)=>{
  console.log(rep.status);
  let $div = document.querySelector('#response-result');
  $div.textContent += 'DONE : '+ rep.status;
  return res.json(); 
}).then((jsonData) => {
  console.log(jsonData);
}).catch((err) => {
  console.log('錯誤:', err);
});






// var req = new XMLHttpRequest();
// req.open('get', url, false);
// req.onload = function () {
//   let $div = document.querySelector('#response-result');
//   $div.textContent += 'DONE : '+ req.status;
// };
// req.send(null);

