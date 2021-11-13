
var elemContent = document.querySelector('#Content');
var elemBtnLg = document.querySelector('#BtnLg');
var elemBtnSm = document.querySelector('#BtnSm');

elemBtnLg.addEventListener('click', function () {
    elemContent.style.fontSize = '20px';
});

elemBtnSm.addEventListener('click', function () {
    elemContent.style.fontSize = '15px';
});
