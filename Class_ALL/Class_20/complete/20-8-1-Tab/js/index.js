
var index = 1;
var elemTabItem = document.querySelectorAll('.tab__item');
var elemContentItem = document.querySelectorAll('.tab__content');

elemTabItem[index - 1].className += ' js-tab__item';
elemContentItem[index - 1].style.display = 'block';

elemTabItem[0].addEventListener('mouseenter', doEnter);
elemTabItem[1].addEventListener('mouseenter', doEnter);
elemTabItem[2].addEventListener('mouseenter', doEnter);
elemTabItem[3].addEventListener('mouseenter', doEnter);
elemTabItem[4].addEventListener('mouseenter', doEnter);

function doEnter() {
	index = this.id.substring(3);

	elemTabItem[0].className = 'tab__item';
	elemTabItem[1].className = 'tab__item';
	elemTabItem[2].className = 'tab__item';
	elemTabItem[3].className = 'tab__item';
	elemTabItem[4].className = 'tab__item';
	this.className += ' js-tab__item';

	elemContentItem[0].style.display = 'none';
	elemContentItem[1].style.display = 'none';
	elemContentItem[2].style.display = 'none';
	elemContentItem[3].style.display = 'none';
	elemContentItem[4].style.display = 'none';
	elemContentItem[index - 1].style.display = 'block';
}
