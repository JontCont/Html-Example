
$('#LessonList .lesson__title').click(function () {
    $(this).siblings('.lesson__desc').stop(true, false).slideToggle();
    $(this).parent().siblings().find('.lesson__desc').slideUp();
});

