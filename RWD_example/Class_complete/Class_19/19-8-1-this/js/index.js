
document.querySelector('#Pic').addEventListener('mouseenter', function () {
    this.src = 'images/003.png';
});

document.querySelector('#Pic').addEventListener('mouseleave', function () {
    this.src = 'images/001.png';
});
