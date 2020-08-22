
var fileNum = 1;

setInterval(doNext, 2000);

function doNext() {
	if (fileNum < 5) {
		fileNum += 1;
	} else {
		fileNum = 1;
	}
	document.querySelector('#Pic').src = 'images/photo' + fileNum + '.jpg';
}