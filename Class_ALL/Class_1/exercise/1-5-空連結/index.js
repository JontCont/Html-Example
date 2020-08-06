window.onload = function(){

    var elemBtn = document.querySelector('.dropdown--arrow');
    var elemDropList = document.querySelector('.dropdown__body');

    elemBtn.onclick = function(e){
        elemDropList.className = 'dropdown__body';
//        e.preventDefault();
    }
}