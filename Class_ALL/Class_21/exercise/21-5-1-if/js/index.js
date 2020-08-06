
var elemThumbItem = document.querySelectorAll('.img__ls > img');
var elemPic = document.querySelector('#Pic');

elemThumbItem[0].addEventListener('click', doClick);
elemThumbItem[1].addEventListener('click', doClick);
elemThumbItem[2].addEventListener('click', doClick);
elemThumbItem[3].addEventListener('click', doClick);
elemThumbItem[4].addEventListener('click', doClick);


function doClick(){
    if(this.id ==='Thumb1'){elemPic.src='images/b1.jpg'}
    if(this.id ==='Thumb2'){elemPic.src='images/b2.jpg'}
    if(this.id ==='Thumb3'){elemPic.src='images/b3.jpg'}
    if(this.id ==='Thumb4'){elemPic.src='images/b4.jpg'}
    if(this.id ==='Thumb5'){elemPic.src='images/b5.jpg'}
}