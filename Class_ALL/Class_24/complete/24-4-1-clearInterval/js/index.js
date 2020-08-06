
var fileNum = 1;
var picInterval;
var duration = 100;

picInterval = setInterval(doNext, duration);

document.querySelector('#BtnPlay').addEventListener('click', doPlay);
document.querySelector('#BtnPause').addEventListener('click', doPause);

function doNext() {
    if (fileNum < 24) {
        fileNum += 1;
    } else {
        fileNum = 1;
    }
    document.querySelector('#Pic').src = 'images/pic' + fileNum + '.jpg';
}

function doPause() {
    clearInterval(picInterval);
}

function doPlay() {
    clearInterval(picInterval);
    picInterval = setInterval(doNext, duration);
}

