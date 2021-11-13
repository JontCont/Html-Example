document.querySelector('#Pic').onmouseenter = function(){
    // document.querySelector('#Pic').src='images/002.png'
    this.src='images/002.png'
}

document.querySelector('#Pic').addEventListener('mouseleave', function(){
    this.src='images/001.png'
});
