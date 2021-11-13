var elemBrandItem = document.querySelectorAll('.brand__item');
// console.log(elemBrandItem);
function getId(){
    alert(this.id);
}

// elemBrandItem[0].addEventListener('click',getId);
// elemBrandItem[1].addEventListener('click',getId);
// elemBrandItem[2].addEventListener('click',getId);
// elemBrandItem[3].addEventListener('click',getId);
// elemBrandItem[4].addEventListener('click',getId);
// elemBrandItem[5].addEventListener('click',getId);
// elemBrandItem[6].addEventListener('click',getId);
// elemBrandItem[7].addEventListener('click',getId);
// elemBrandItem[8].addEventListener('click',getId);
// elemBrandItem[9].addEventListener('click',getId);
// elemBrandItem[10].addEventListener('click',getId);
// elemBrandItem[11].addEventListener('click',getId);
// elemBrandItem[12].addEventListener('click',getId);

var i = elemBrandItem.length;
for(var round =0; round<i ;round+=1){
    elemBrandItem[round].addEventListener('click',getId);
}