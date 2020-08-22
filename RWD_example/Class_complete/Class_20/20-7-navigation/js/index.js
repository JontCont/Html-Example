
var elemNaviItem = document.querySelectorAll('.navi-list > li');

elemNaviItem[0].addEventListener('mouseenter', doEnter);
elemNaviItem[1].addEventListener('mouseenter', doEnter);
elemNaviItem[2].addEventListener('mouseenter', doEnter);
elemNaviItem[3].addEventListener('mouseenter', doEnter);
elemNaviItem[4].addEventListener('mouseenter', doEnter);

elemNaviItem[0].addEventListener('mouseleave', doLeave);
elemNaviItem[1].addEventListener('mouseleave', doLeave);
elemNaviItem[2].addEventListener('mouseleave', doLeave);
elemNaviItem[3].addEventListener('mouseleave', doLeave);
elemNaviItem[4].addEventListener('mouseleave', doLeave);

function doEnter() {
    var index = this.id.substring(4);
    document.querySelector('#Sub' + index).style.display = 'block';
}

function doLeave() {
    var index = this.id.substring(4);
    document.querySelector('#Sub' + index).style.display = 'none';
}
