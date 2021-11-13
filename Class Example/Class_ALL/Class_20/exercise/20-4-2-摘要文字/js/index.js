var elemDesc = document.querySelector('.desc');
// console.log(elemDesc.textContent.length);
var str  = elemDesc.textContent.substring(0,40);
console.log(str);

elemDesc.textContent = str + " ...more";
elemDesc.innerHTML = str + " ...<a href='javascript:;'>more</a>";

