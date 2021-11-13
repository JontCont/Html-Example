for(var i=1 ; i<=5;i++ ){
    document.querySelector('#List'+i).addEventListener('mouseenter',doEneter);
    document.querySelector('#List'+i).addEventListener('mouseleave',doLeave);
}

function doEneter(){
    var index = this.id.substring(4);
    // console.log(index);
    document.querySelector('#Sub'+index).style.display='block';

}
function doLeave(){
    var index = this.id.substring(4);
    // console.log(index);
    document.querySelector('#Sub'+index).style.display='none';

}