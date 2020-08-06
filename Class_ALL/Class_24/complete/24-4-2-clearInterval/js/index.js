
var fileNum = 1;
var picInterval;
var duration = 100;
var elemPic = document.querySelector('#Pic');

picInterval = setInterval(doNext, duration);
document.querySelector('#Wrap').addEventListener('mouseenter', doEnter);
document.querySelector('#Wrap').addEventListener('mouseleave', doLeave);
document.querySelector('#BtnNext').addEventListener('click', doNext);
document.querySelector('#BtnPrev').addEventListener('click', doPrev);

function doEnter() {
    clearInterval(picInterval);
}
function doLeave() {
    picInterval = setInterval(doNext, duration);
}
function doNext() {
    if (fileNum < 24) {
        fileNum++;
    } else {
        fileNum = 1;
    }
    elemPic.src = 'images/pic' + fileNum + '.jpg';
}
function doPrev() {
    if (fileNum > 1) {
        fileNum--;
    } else {
        fileNum = 24
    }
    elemPic.src = 'images/pic' + fileNum + '.jpg';
}

