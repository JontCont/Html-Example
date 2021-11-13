
var index = 1;
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
	index = this.id.substring(3);

	elemTabItem[0].classList.remove('js-tab__item');
	elemTabItem[1].classList.remove('js-tab__item');
	elemTabItem[2].classList.remove('js-tab__item');
	elemTabItem[3].classList.remove('js-tab__item');
	elemTabItem[4].classList.remove('js-tab__item');
	this.classList.add('js-tab__item');

	elemContentItem[0].classList.add('js-hidden');
	elemContentItem[1].classList.add('js-hidden');
	elemContentItem[2].classList.add('js-hidden');
	elemContentItem[3].classList.add('js-hidden');
	elemContentItem[4].classList.add('js-hidden');
	elemContentItem[index - 1].classList.remove('js-hidden');
}

