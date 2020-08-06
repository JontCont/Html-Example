var elemPic = document.querySelector('#Pic');

elemPic.onmouseenter= function(){
    this.src='images/002.png';
}

elemPic.onmouseleave= function(){
    this.src='images/001.png';
}