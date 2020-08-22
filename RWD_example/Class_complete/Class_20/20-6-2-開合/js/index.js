
var elemTitleItem = document.querySelectorAll('.course');

elemTitleItem[0].addEventListener('mouseenter', doEnter);
elemTitleItem[1].addEventListener('mouseenter', doEnter);
elemTitleItem[2].addEventListener('mouseenter', doEnter);
elemTitleItem[3].addEventListener('mouseenter', doEnter);
elemTitleItem[4].addEventListener('mouseenter', doEnter);

elemTitleItem[0].addEventListener('mouseleave', doLeave);
elemTitleItem[1].addEventListener('mouseleave', doLeave);
elemTitleItem[2].addEventListener('mouseleave', doLeave);
elemTitleItem[3].addEventListener('mouseleave', doLeave);
elemTitleItem[4].addEventListener('mouseleave', doLeave);

function doEnter() {
	var index = this.id.substring(6);
	document.querySelector('#Content' + index).style.display = 'block';
}

function doLeave() {
	var index = this.id.substring(6);
	document.querySelector('#Content' + index).style.display = 'none';
}
