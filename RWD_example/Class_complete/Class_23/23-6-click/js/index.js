
for (var i = 1; i <= 14; i++) {
    document.querySelector('#Pic' + i).addEventListener('click', todo);
}

function todo() {
    alert(this.id);
}

