var $content =$('#Content');


$('#BtnLg').click(function(){
    
    // $('#Content').css('font-size',20);
    $content.css({
        'font-size':20,
        'background-color':'pink'   
    });
})

$('#BtnSm').click(function(){
    // $content.css('font-size',15);
    $('#Content').css({
        fontSize:15,
        backgroundColor:'white'   
    });
})