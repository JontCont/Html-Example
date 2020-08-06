var elemTabItem = document.querySelectorAll('.tab__item');
var elemContentItem =document.querySelectorAll('.tab__content');
var index=0;

// init
elemTabItem[index].className +=' js-tab__item';
elemContentItem[index].style.display='block';


for(var i=0;i<5;i++){
    elemTabItem[i].addEventListener('mouseenter',doEnter);
}

function doEnter(){
    index = this.id.substring(3);
    for(var i=0;i<5;i++){
        elemTabItem[i].className ='tab__item';
        console.log(elemContentItem[i].style.display='none');
    }
    this.className +=' js-tab__item';
    elemContentItem[index-1].style.display='block';
}
// elemTabItem[index-1].className +=' js-tab__item';


