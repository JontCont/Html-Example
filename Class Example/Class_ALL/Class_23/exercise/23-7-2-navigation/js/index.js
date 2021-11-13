var elemNaviItem = document.querySelectorAll('#NaviList >li');

for(var i=0;i<5 ;i++){
    elemNaviItem[i].addEventListener('mouseenter',doEnter);
    elemNaviItem[i].addEventListener('mouseleave',doLeave);
}

function doEnter(){
    this.children[1].style.display='block'
}
function doLeave(){
    this.children[1].style.display='none'
}