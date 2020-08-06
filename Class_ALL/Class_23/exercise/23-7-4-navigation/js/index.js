var elemNaviItem = document.querySelectorAll('#NaviList > li');
var elemNaviItemLen = elemNaviItem.length;

for (var i = 0; i < elemNaviItemLen; i++) {
    elemNaviItem[i].addEventListener('mouseenter',doEnterLeave);
    elemNaviItem[i].addEventListener('mouseleave',doEnterLeave);
}

function doEnterLeave(e){
    var elemItem =this.children;
    for(var i =0 ;i<elemItem.length;i++){
        if(elemItem[i].nodeName ==='UL'){
            if(e.type ==='mouseenter'){
                elemItem[i].style.display='block';
            }
            else{
                elemItem[i].style.display='none';
            }
        }
    }
}