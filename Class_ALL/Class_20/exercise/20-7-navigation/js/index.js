
var elemNaviItem = document.querySelectorAll('.navi-list > li');
for(var i=0;i<5;i++){

    elemNaviItem[i].addEventListener('mouseenter',doEnter);
    elemNaviItem[i].addEventListener('mouseleave',doLeave);
}

function doEnter(){
    var index =this.id.substring(4);
    document.querySelector('#Sub'+index).style.display='block';
}
function doLeave(){
    var index =this.id.substring(4);
    document.querySelector('#Sub'+index).style.display='none';
}

