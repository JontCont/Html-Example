
var fileNum = 1;

setInterval(function () {
	if (fileNum < 5) {
		fileNum += 1;
	} else {
		fileNum = 1;
	}
	document.querySelector('#Pic').src = 'images/photo' + fileNum + '.jpg';
}, 2000);
