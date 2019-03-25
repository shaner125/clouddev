$(document).on('turbolinks:load', function() {
  // when a patient is clicked, show its full content in a modal window
  $("body").on( "click", ".single-post-card, .single-post-list", function() {
    var h4 = $(this).find('.card .card-block .post-text').html();
    var title = $(this).find('.post-content .title ').html();
    var content = $(this).find('.post-content .content ').html();
    var destroy = $(this).find('.post-content .delete_button').attr('href');
    var edit = $(this).find('.post-content .edit_button').attr('href');
    $('.modal-header .posted-by').text(h4);
    $('.loaded-data .title ').text(title);
    $('.loaded-data .content ').text(content);
    $('.loaded-data .delete_button a').attr('href', destroy);
    $('.loaded-data .edit_button a').attr('href', edit);
    $('.myModal').modal('show');
  });
});