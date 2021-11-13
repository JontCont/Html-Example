
document.querySelector('#Pic').addEventListener('mouseover', function () {
    document.querySelector('#Pic').src = 'images/002.png';
});

document.querySelector('#Pic').addEventListener('mouseout', function () {
    document.querySelector('#Pic').src = 'images/001.png';
});
