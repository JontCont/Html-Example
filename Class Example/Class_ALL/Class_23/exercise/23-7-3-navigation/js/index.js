var elemNaviItem = document.querySelectorAll('#NaviList > li');
var elemNaviItemLen = elemNaviItem.length;

// console.log(elemNaviItemLen);

for(var i=0;i< elemNaviItemLen;i++){
    elemNaviItem[i].addEventListener('mouseenter',doEnter);
    elemNaviItem[i].addEventListener('mouseleave',doLeave);
}

function doEnter(){
    var elemItem = this.children;
    for(var i=0;i< elemItem.length; i++){
        if(elemItem[i].nodeName ==='UL'){
            elemItem[i].style.display ='block';
        }       
    }

}

function doLeave(){
    var elemItem = this.children;
    for(var i=0;i< elemItem.length; i++){
        if(elemItem[i].nodeName ==='UL'){
            elemItem[i].style.display ='none';
        }       
    }

}

