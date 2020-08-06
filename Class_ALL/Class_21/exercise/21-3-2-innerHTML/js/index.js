
var elemItem = document.querySelectorAll('.item');

for(var i=0;i<elemItem.length;i++){
    elemItem[i].addEventListener('mouseenter',doEnter);
    elemItem[i].addEventListener('mouseleave',doLeave);
}

function doLeave(){this.children[1].innerHTML='';}
function doEnter(){
    var index=this.id.substring(4);
    this.children[1].innerHTML='<img src="images/img'+index+'.jpg">';
}