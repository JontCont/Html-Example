var money
document.querySelector('#Money').addEventListener('onchange',
function(){
    money =document.querySelector('#Money').value;
})
console.log(money);
if(Money >= 150){
    document.querySelector('#Todo').textContent='text'
}
