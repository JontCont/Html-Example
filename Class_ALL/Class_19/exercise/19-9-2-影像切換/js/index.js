// console.log('#ImgLs>img');
var elemPicItem =  document.querySelectorAll('#ImgLs>img');
var elemPic =  document.querySelector('#Pic');

// console.log(elemPicItem);
elemPicItem[0].addEventListener('click',function(){
    elemPic.src='images/b1.jpg';
})
elemPicItem[1].addEventListener('click',function(){
    elemPic.src='images/b2.jpg';
})
elemPicItem[2].addEventListener('click',function(){
    elemPic.src='images/b3.jpg';
})
elemPicItem[3].addEventListener('click',function(){
    elemPic.src='images/b4.jpg';
})
elemPicItem[4].addEventListener('click',function(){
    elemPic.src='images/b5.jpg';
})