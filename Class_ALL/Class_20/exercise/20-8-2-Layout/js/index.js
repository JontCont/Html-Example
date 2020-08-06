var index = 0;
var elemViewItem =document.querySelectorAll('.view-list > a');
var elemType = document.querySelector('#EntryType');
var elemViewItemLen =elemViewItem.length;
// init
elemViewItem[index].className ='View-now';
elemType.className +=' Type'+(index+1);

for(var i=0;i<elemViewItemLen;i++){
    elemViewItem[i].addEventListener('click', doClick);
}
function doClick()
{
    index = this.id.substring(3);
    
    for(var i=0;i<elemViewItemLen;i++){
        if(index == i ){
            this.className ='View-now';
        }
        else{
            elemViewItem[i].className='';
        }
    }
    elemType.className = 'entry-out Type'+index;
}
