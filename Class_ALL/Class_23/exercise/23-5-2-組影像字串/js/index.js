var thumbArr = ['s1.jpg', 's2.jpg', 's3.jpg', 's4.jpg', 's5.jpg'];
var thumbStr = '';

for(var i=0;i <thumbArr.length;i++){
    thumbStr='<img class="img-resp" src="images/b'+i+'.jpg">';
}
document.querySelector('#ImgList').innerHTML=thumbStr;
