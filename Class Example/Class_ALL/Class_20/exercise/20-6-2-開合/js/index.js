
var elemTitleItem = document.querySelectorAll('.course');



for(var i =0;i<5;i++)
{
    elemTitleItem[i].addEventListener('mouseenter',doEnter);
    elemTitleItem[i].addEventListener('mouseleave',doLeave);
}

function doEnter(){
    var index = this.id.substring(6);
    document.querySelector('#Content'+index).style.display ='block';
}
function doLeave(){
    var index = this.id.substring(6);
    document.querySelector('#Content'+index).style.display ='none';
}
