var elemContent = document.querySelector('#Content');

document.querySelector('#BtnLg').addEventListener('click',function(){
    elemContent.style.fontSize = '20px';
    // elemContent.style.backgroundColor='pink'
});

document.querySelector('#BtnSm').addEventListener('click',function(){
    elemContent.style.fontSize = '15px';
});