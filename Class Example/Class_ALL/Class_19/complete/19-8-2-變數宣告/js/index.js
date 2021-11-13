
var elemPic = document.querySelector('#Pic');

elemPic.addEventListener('mouseenter', function () {
    this.src = 'images/002.png';
});

elemPic.addEventListener('mouseleave', function () {
    this.src = 'images/001.png';
});
