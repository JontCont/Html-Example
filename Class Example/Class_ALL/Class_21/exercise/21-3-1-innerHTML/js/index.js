
var elemItem = document.querySelectorAll('.item');

var indexLen =elemItem.length;
console.log("<img src='images/img"+1+".jpg'>");
for(var i=0;i<indexLen-1;i++){
    elemItem[i].addEventListener('mouseenter',function(){
        var index = i+1;
        this.children[1].innerHTML ='<img src="images/img'+ index +'.jpg">';
        console.log(elemItemIndex);
    })
}
for(var i=0;i<indexLen;i++){
    elemItem[i].addEventListener('mouseleave',function(){
        this.children[1].innerHTML ='';
    })
}
