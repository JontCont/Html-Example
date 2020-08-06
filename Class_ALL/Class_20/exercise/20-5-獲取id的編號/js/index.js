var elemTabItem = document.querySelectorAll('.tab__item');
// console.log(elemTabItem);
var elemPic = document.querySelector('#Pic');
var num = elemTabItem.length;

function doClick(){
    elemPic.src = 'images/car'+this.id.substring(7)+".jpg";
}

for(var i = 0 ; i<num ;i+=1){
    elemTabItem[i].addEventListener('click',doClick);
}


