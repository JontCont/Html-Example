var len =document.querySelector('.img__inner').children.length;

for(var i=0;i <14;i++){
    document.querySelector('#Pic'+(i+1)).addEventListener('click',todo);
}

function todo(){
    alert(this.id);
}
