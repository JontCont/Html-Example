/* Faroese initialisation for the jQuery UI date picker plugin */
/* Written by Sverri Mohr Olsen, sverrimo@gmail.com */
jQuery(function($){
	$.datepicker.regional['fo'] = {
		closeText: 'Lat aftur',
		prevText: '&#x3c;Fyrra',
		nextText: 'Nasta&#x3e;',
		currentText: 'I dag',
		monthNames: ['Januar','Februar','Mars','April','Mei','Juni',
		'Juli','August','September','Oktober','November','Desember'],
		monthNamesShort: ['Jan','Feb','Mar','Apr','Mei','Jun',
		'Jul','Aug','Sep','Okt','Nov','Des'],
		dayNames: ['Sunnudagur','Manadagur','Tysdagur','Mikudagur','Hosdagur','Friggjadagur','Leyardagur'],
		dayNamesShort: ['Sun','Man','Tys','Mik','Hos','Fri','Ley'],
		dayNamesMin: ['Su','Ma','Ty','Mi','Ho','Fr','Le'],
		weekHeader: 'Vk',
		dateFormat: 'dd-mm-yy',
		firstDay: 0,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''};
	$.datepicker.setDefaults($.datepicker.regional['fo']);
});
