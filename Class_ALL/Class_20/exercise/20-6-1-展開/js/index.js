
var elemTitleItem = document.querySelectorAll('.course-tit');
// console.log(elemTitleItem);

function doClick(){
    var index = this.id.substring(5)
    // console.log(this.id.substring(5));
    // console.log(document.querySelector('#Content'+index));
    if(document.querySelector('#Content'+index).style.display ==="block"){
        document.querySelector('#Content'+index).style.display = 'none' 
    }
    else{
        document.querySelector('#Content'+index).style.display ='block';
    }
}



elemTitleItem[0].addEventListener('click', doClick);
elemTitleItem[1].addEventListener('click', doClick);
elemTitleItem[2].addEventListener('click', doClick);
elemTitleItem[3].addEventListener('click', doClick);
elemTitleItem[4].addEventListener('click', doClick);
