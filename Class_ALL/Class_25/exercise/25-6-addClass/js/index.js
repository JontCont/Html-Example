var $entryType =$('#EntryType');

$entryType.addClass('Type1');

$('#Tab1').click(function(){
    $entryType.removeClass().addClass('Type1 entry-out Type1');
})


$('#Tab2').click(function(){
    $entryType.addClass('Type2');
    $entryType.removeClass('Type1');
    $entryType.removeClass('Type3');
})


$('#Tab3').click(function(){
    $entryType.addClass('Type3');
    $entryType.removeClass('Type1');
    $entryType.removeClass('Type2');
})

