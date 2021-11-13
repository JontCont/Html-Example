var fileNum =1;

setInterval(function(){
    fileNum++;
    document.querySelector('#Pic').src='images/photo'+ fileNum +'.jpg';
    if(fileNum > 5){fileNum=1;} 
    
},1000);