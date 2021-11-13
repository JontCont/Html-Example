
var index = 1;
var elemTabItem = document.querySelectorAll('.tab__item');
var elemContentItem = document.querySelectorAll('.tab__content');

// init
elemTabItem[index-1].classList.add('js-tab__item');
elemContentItem[index-1].classList.remove('js-hidden');

for(var i=0;i< elemTabItem.length ;i++){
    elemTabItem[i].addEventListener('mouseenter',doEnter);
}

function doEnter(){
    index =this.id.substring(3);
    for(var i=0;i< elemTabItem.length ;i++){
        elemTabItem[i].classList.remove('js-tab__item');
        elemContentItem[i].classList.add('js-hidden');
    }
    this.classList.add('js-tab__item');
    elemContentItem[index-1].classList.remove('js-hidden');
}
