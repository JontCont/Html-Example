
var money = 150;

document.querySelector('#Money').textContent = money;

if (money >= 150) {
    document.querySelector('#Todo').textContent = '去吃麥當勞';
}else {
    document.querySelector('#Todo').textContent = '只能吃便當了！冏';
}

