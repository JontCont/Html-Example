
var index = 1;
var elemViewItem = document.querySelectorAll('.view-list a');
var elemType = document.querySelector('#EntryType');

elemViewItem[index - 1].className = 'View-now';
elemType.className += ' Type' + index;

elemViewItem[0].addEventListener('click', doClick);
elemViewItem[1].addEventListener('click', doClick);
elemViewItem[2].addEventListener('click', doClick);

function doClick() {

    index = this.id.substring(3);

    this.className = 'View-now';
    elemViewItem[0].className = '';
    elemViewItem[1].className = '';
    elemViewItem[2].className = '';

    elemType.className = 'entry-out Type' + index;

}

