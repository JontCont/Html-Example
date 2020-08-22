var thumbArr = ['s1.jpg', 's2.jpg', 's3.jpg', 's4.jpg', 's5.jpg'];
var thumbStr = '';
var elemImgList = document.querySelector('#ImgList');

for (var i = 0, thumbArrLen = thumbArr.length; i < thumbArrLen; i++) {
	thumbStr += '<img src="images/' + thumbArr[i] + '">';
}
elemImgList.innerHTML = thumbStr;