var elemTitleItem = document.querySelectorAll('.course-tit');

elemTitleItem[0].addEventListener('click', doClick);
elemTitleItem[1].addEventListener('click', doClick);
elemTitleItem[2].addEventListener('click', doClick);
elemTitleItem[3].addEventListener('click', doClick);
elemTitleItem[4].addEventListener('click', doClick);

function doClick() {
	this.nextElementSibling.style.display = 'block';
}

