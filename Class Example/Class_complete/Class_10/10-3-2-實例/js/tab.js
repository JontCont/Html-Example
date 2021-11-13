$(function(){

	$('.tab').each(function(){
		var $this = $(this);
		$this.find('.tab-item').eq(0).addClass('is-tab-active');
		$this.find('.tab-content').eq(0).show();

		$this.find('.tab-item').click(function(){
			var now = $(this).index();
			$(this).addClass('is-tab-active').siblings().removeClass('is-tab-active');
			$(this).parent().siblings().find('.tab-content').eq(now).show().siblings().hide();
		});
	});
	
});