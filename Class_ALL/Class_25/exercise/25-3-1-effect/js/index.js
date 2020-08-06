$('.img__ls>img').click(function(){
    var text  = 
    
});

$('#Thumb1').click(function(){
    $('#Pic1').fadeIn();
    $('#Pic2 , #Pic3 , #Pic4, #Pic5').fadeOut();
});

$('#Thumb2').click(function(){
    $('#Pic1,#Pic3,#Pic4,#Pic5').fadeOut();
    $('#Pic2').fadeIn();
});
$('#Thumb3').click(function(){
    $('#Pic3').fadeIn();
    $('#Pic1,').fadeOut();
    $('#Pic2').fadeOut();
    $('#Pic4').fadeOut();
    $('#Pic5').fadeOut();
});
$('#Thumb4').click(function(){
    $('#Pic1').fadeOut();
    $('#Pic2').fadeOut();
    $('#Pic3').fadeOut();
    $('#Pic4').fadeIn();
    $('#Pic5').fadeOut();
});
$('#Thumb5').click(function(){
    $('#Pic1').fadeOut();
    $('#Pic2').fadeOut();
    $('#Pic3').fadeOut();
    $('#Pic4').fadeOut();
    $('#Pic5').fadeIn();
});