
var fileNum = 1;
var elemPic = document.querySelector('#Pic');

elemPic.src = 'images/ui0' + fileNum + '.jpg';

elemPic.addEventListener('click', doClick);

function doClick() {
    if (fileNum < 4) {
        // fileNum = fileNum + 1;
        // fileNum +=1;
        fileNum++;
    } else {
        fileNum = 1;
    }
    elemPic.src = 'images/ui0' + fileNum + '.jpg';
}
