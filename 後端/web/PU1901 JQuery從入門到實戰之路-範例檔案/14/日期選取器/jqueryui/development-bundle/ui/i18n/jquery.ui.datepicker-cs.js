/* Czech initialisation for the jQuery UI date picker plugin. */
/* Written by Tomas Muller (tomas@tomas-muller.net). */
jQuery(function($){
	$.datepicker.regional['cs'] = {
		closeText: 'Zavřit',
		prevText: '&#x3c;Dřive',
		nextText: 'Později&#x3e;',
		currentText: 'Nyni',
		monthNames: ['leden','unor','březen','duben','květen','červen',
        'červenec','srpen','zaři','řijen','listopad','prosinec'],
		monthNamesShort: ['led','uno','bře','dub','kvě','čer',
		'čvc','srp','zař','řij','lis','pro'],
		dayNames: ['neděle', 'ponděli', 'utery', 'středa', 'čtvrtek', 'patek', 'sobota'],
		dayNamesShort: ['ne', 'po', 'ut', 'st', 'čt', 'pa', 'so'],
		dayNamesMin: ['ne','po','ut','st','čt','pa','so'],
		weekHeader: 'Tyd',
		dateFormat: 'dd.mm.yy',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''};
	$.datepicker.setDefaults($.datepicker.regional['cs']);
});
