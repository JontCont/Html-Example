
var elemItem = document.querySelectorAll('.item');

elemItem[0].addEventListener('mouseenter', doEnter);
elemItem[1].addEventListener('mouseenter', doEnter);
elemItem[2].addEventListener('mouseenter', doEnter);
elemItem[3].addEventListener('mouseenter', doEnter);
elemItem[4].addEventListener('mouseenter', doEnter);
elemItem[5].addEventListener('mouseenter', doEnter);
elemItem[6].addEventListener('mouseenter', doEnter);

elemItem[0].addEventListener('mouseleave', doLeave);
elemItem[1].addEventListener('mouseleave', doLeave);
elemItem[2].addEventListener('mouseleave', doLeave);
elemItem[3].addEventListener('mouseleave', doLeave);
elemItem[4].addEventListener('mouseleave', doLeave);
elemItem[5].addEventListener('mouseleave', doLeave);
elemItem[6].addEventListener('mouseleave', doLeave);

function doEnter() {
    var index = this.id.substring(4);
    this.children[1].innerHTML = '<img src="images/img' + index + '.jpg">';
}

function doLeave() {
    this.children[1].innerHTML = '';
}


