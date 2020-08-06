
var index = 1;
var elemTabItem = document.querySelectorAll('.tab__item');
var elemContentItem = document.querySelectorAll('.tab__content');

elemTabItem[index - 1].classList.add('js-tab__item');
elemContentItem[index - 1].classList.remove('js-hidden');

for(var i=0;i< elemTabItem.length ;i++){
    elemTabItem[i].addEventListener('mouseenter',doEnter);
}

function doEnter(){
    cachesindex =index;
    index =this.id.substring(3);
    elemTabItem[cachesindex-1].classList.remove('js-tab__item');
    this.classList.add('js-tab__item');
    
    elemContentItem[cachesindex-1].classList.add('js-hidden');
    elemContentItem[index-1].classList.remove('js-hidden');
}
