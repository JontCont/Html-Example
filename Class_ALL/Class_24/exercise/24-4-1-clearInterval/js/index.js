var fileNum =1;
var picInterval;
// init
picInterval = setInterval(doNext,100);
// event
document.querySelector('#BtnPause').addEventListener('click', function(){
    clearInterval(picInterval);
})
document.querySelector('#BtnPlay').addEventListener('click', function(){
    picInterval= setInterval(doNext,100);
})
function doNext(){
    fileNum++;
    if(fileNum==24) fileNum=1;
    document.querySelector('#Pic').src='images/Pic'+fileNum+'.jpg';
}