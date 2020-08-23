var pro_app = ['N/A','醫療產品','電子產品','車用','一般'];
var pro_material = ['N/A','醫療產品','電子產品','車用','一般'];
var pro_color = ['N/A','透明','白色'];

var str ="";
for(var i =0 ; i < pro_app.length;i++){
    str +='<option value='+pro_app[i]+'>'+pro_app[i]+'</option>'
}
$('#data_pro_app').html(str)

str ="";
for(var i =0 ; i < pro_material.length;i++){
    str +='<option value='+pro_material[i]+'>'+pro_material[i]+'</option>'
}
$('#data_pro_material').html(str)

str ="";
for(var i =0 ; i < pro_color.length;i++){
    str +='<option value='+pro_color[i]+'>'+pro_color[i]+'</option>'
}
$('#data_pro_color').html(str)

str ="";
for(var i =1 ; i < 6;i++){
    str +='<option value=LAYER'+ i+'>LAYER '+i+'</option>'
}
$('#data_pro_type').html(str)


var index = 1;
var len = $('.ul_content').length;
$('.Previous__btn').css({
    'display': 'none'
});
$('.save_btn').css({
    'display': 'none'
});
$('.next__btn').click(function() {
    $('ul:nth-child(' + index + ')').removeClass('part_set');
    index += 1;
    if (index >= len) {
        $('.save_btn').css({
            'display': 'inline-block'
        });
        $('.next__btn').css({
            'display': 'none'
        });
        $('.Previous__btn').css({
            'margin-left': 25 + '%'
        });
        index = len;
    } else {
        $('.save_btn').css({
            'display': 'none'
        });
    }
    $('ul:nth-child(' + index + ')').addClass('part_set');
    if (index > 1) {
        $('.Previous__btn').css({
            'display': 'inline-block'
        });
    }

    $('.title__h2').html('開發評估 Part ' + index + '/' + len);
})

$('.Previous__btn').click(function() {
    $('ul:nth-child(' + index + ')').removeClass('part_set');
    if (index <= 1) index = 1;
    else {
        $('.save_btn').css({
            'display': 'none'
        });
        $('.Previous__btn').css({
            'margin-left': 'auto'
        });
        $('.next__btn').css({
            'display': 'inline-block'
        });
        index -= 1;
    }
    $('ul:nth-child(' + index + ')').addClass('part_set');
    if (index == 1) {
        $('ul:nth-child(' + index + ')').addClass('part_set');
        $('.Previous__btn').css({
            'display': 'none'
        });
    }
    $('.title__h2').html('開發評估 Part ' + index + '/' + len);
})


$('.meun_style').mousemove(function(){
    $('.navi-list').css({
        'display':'block'
    });
    $('.meun_style').css({
        'width': 300,
        'height': 200
    });

})
$('.meun_style').mouseleave(function(){
    $('.navi-list').css({
        'display':'none'
    });
    $('.meun_style').css({
        'width': 64,
        'height': 27
    });

})

$('.part_A1').mousemove(function(){
    $('.part_A1>ul').css({
        'display':'block'
    });
    $('.meun_style').css({
        'width': 300,
        'height': 200
    });

})

$('.part_A1').mouseleave(function(){
    $('.part_A1>ul').css({
        'display':'none'
    });
})

$('.part_AA1').mousemove(function(){
    $('.part_AA1>ul').css({
        'display':'block'
    });
    $('.meun_style').css({
        'width': 300,
        'height': 200
    });

})

$('.part_AA1').mouseleave(function(){
    $('.part_AA1>ul').css({
        'display':'none'
    });
})


$('ul>.part_A1>span').click(function () {
    $('.area').val('part_A1');
})
$('ul>.part_A2>span').click(function () {
    $('.area').val('part_A2');
})
$('ul>.part_AA1>span').click(function () {
    $('.area').val('part_AA1');
 
})
$('ul>.part_AA2>span').click(function () {
    $('.area').val('part_AA2');
})

$('ul>.part_AAA1>span').click(function () {
    $('.area').val('part_AAA1');
 
})
$('ul>.part_AAA2>span').click(function () {
    $('.area').val('part_AAA2');
})

