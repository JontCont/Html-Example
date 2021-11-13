
var elemTabItem = document.querySelectorAll('.tab__item');
var elemPic = document.querySelector('#Pic');

elemTabItem[0].addEventListener('click', doClick);
elemTabItem[1].addEventListener('click', doClick);
elemTabItem[2].addEventListener('click', doClick);
elemTabItem[3].addEventListener('click', doClick);
elemTabItem[4].addEventListener('click', doClick);

function doClick() {
	elemPic.src = 'images/car' + this.id.substring(7) + '.jpg';
}