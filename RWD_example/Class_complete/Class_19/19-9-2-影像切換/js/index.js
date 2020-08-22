
var elemPic = document.querySelector('#Pic');
var elemPicItem = document.querySelectorAll('#ImgLs > img');

elemPicItem[0].addEventListener('click', function () {
	elemPic.src = 'images/b1.jpg';
});
elemPicItem[1].addEventListener('click', function () {
	elemPic.src = 'images/b2.jpg';
});
elemPicItem[2].addEventListener('click', function () {
	elemPic.src = 'images/b3.jpg';
});
elemPicItem[3].addEventListener('click', function () {
	elemPic.src = 'images/b4.jpg';
});
elemPicItem[4].addEventListener('click', function () {
	elemPic.src = 'images/b5.jpg';
});