
var fileNum = 1;
var picInterval;
var duration = 100;
var elemWrap =document.querySelector('#Wrap');
var elemPic =document.querySelector('#Pic');
var elemBtnNext = document.querySelector('#BtnNext');
var elemBtnPrev = document.querySelector('#BtnPrev');
//event
elemWrap.addEventListener('mouseenter',function(){
    clearInterval(picInterval);
})
elemWrap.addEventListener('mouseleave',function(){
    picInterval = setInterval(doNext, duration);
})

elemBtnNext.addEventListener('click',doNext);
elemBtnPrev.addEventListener('click',doPrev);

//init
picInterval = setInterval(doNext, duration);

function doNext() {
    if (fileNum < 24) {
        fileNum++;
    } else {
        fileNum = 1;
    }
    document.querySelector('#Pic').src = 'images/pic' + fileNum + '.jpg';
}

function doPrev() {
    fileNum--;
    if(fileNum < 1) fileNum=24;
    document.querySelector('#Pic').src = 'images/pic' + fileNum + '.jpg';
}