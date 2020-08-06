
for (var i = 1; i <= 5; i++) {
    document.querySelector('#List' + i).addEventListener('mouseenter', doEnter);
    document.querySelector('#List' + i).addEventListener('mouseleave', doLeave);
}

function doEnter() {
    var index = this.id.substr(4);
    document.querySelector('#Sub' + index).style.display = 'block';
}

function doLeave() {
    var index = this.id.substr(4);
    document.querySelector('#Sub' + index).style.display = 'none';
}