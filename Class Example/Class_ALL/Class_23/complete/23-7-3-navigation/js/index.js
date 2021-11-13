var elemNaviItem = document.querySelectorAll('#NaviList > li');
var elemNaviItemLen = elemNaviItem.length;

for (var i = 0; i < elemNaviItemLen; i++) {
    elemNaviItem[i].addEventListener('mouseenter', doEnter);
    elemNaviItem[i].addEventListener('mouseleave', doLeave);
}

function doEnter() {
    var elemItem = this.children;
    for (var i = 0, len = elemItem.length; i < len; i++) {
        if (elemItem[i].nodeName === 'UL') {
            elemItem[i].style.display = 'block';
        }
    }
}

function doLeave() {
    var elemItem = this.children;
    for (var i = 0, len = elemItem.length; i < len; i++) {
        if (elemItem[i].nodeName === 'UL') {
            elemItem[i].style.display = 'none';
        }
    }
}