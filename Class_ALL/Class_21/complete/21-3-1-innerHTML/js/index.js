
var elemItem = document.querySelectorAll('.item');

elemItem[0].addEventListener('mouseenter', function () {
    this.children[1].innerHTML = '<img src="images/img1.jpg">';
});
elemItem[1].addEventListener('mouseenter', function () {
    this.children[1].innerHTML = '<img src="images/img2.jpg">';
});
elemItem[2].addEventListener('mouseenter', function () {
    this.children[1].innerHTML = '<img src="images/img3.jpg">';
});
elemItem[3].addEventListener('mouseenter', function () {
    this.children[1].innerHTML = '<img src="images/img4.jpg">';
});
elemItem[4].addEventListener('mouseenter', function () {
    this.children[1].innerHTML = '<img src="images/img5.jpg">';
});
elemItem[5].addEventListener('mouseenter', function () {
    this.children[1].innerHTML = '<img src="images/img6.jpg">';
});
elemItem[6].addEventListener('mouseenter', function () {
    this.children[1].innerHTML = '<img src="images/img7.jpg">';
});

elemItem[0].addEventListener('mouseleave', function () {
    this.children[1].innerHTML = '';
});
elemItem[1].addEventListener('mouseleave', function () {
    this.children[1].innerHTML = '';
});
elemItem[2].addEventListener('mouseleave', function () {
    this.children[1].innerHTML = '';
});
elemItem[3].addEventListener('mouseleave', function () {
    this.children[1].innerHTML = '';
});
elemItem[4].addEventListener('mouseleave', function () {
    this.children[1].innerHTML = '';
});
elemItem[5].addEventListener('mouseleave', function () {
    this.children[1].innerHTML = '';
});
elemItem[6].addEventListener('mouseleave', function () {
    this.children[1].innerHTML = '';
});

