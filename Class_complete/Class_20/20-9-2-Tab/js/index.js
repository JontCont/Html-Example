
var index = 1;
var cacheIndex;
var elemTabItem = document.querySelectorAll('.tab__item');
var elemContentItem = document.querySelectorAll('.tab__content');

elemTabItem[index - 1].classList.add('js-tab__item');
elemContentItem[index - 1].classList.remove('js-hidden');

elemTabItem[0].addEventListener('mouseenter', doEnter);
elemTabItem[1].addEventListener('mouseenter', doEnter);
elemTabItem[2].addEventListener('mouseenter', doEnter);
elemTabItem[3].addEventListener('mouseenter', doEnter);
elemTabItem[4].addEventListener('mouseenter', doEnter);

function doEnter() {
	cacheIndex = index;
	index = this.id.substring(3);
	elemTabItem[cacheIndex - 1].classList.remove('js-tab__item');
	this.classList.add('js-tab__item');

	elemContentItem[cacheIndex - 1].classList.add('js-hidden');
	elemContentItem[index - 1].classList.remove('js-hidden');
}
