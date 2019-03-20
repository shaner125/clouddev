$(document).on('turbolinks:load', function() {
  // when a patient is clicked, show its full content in a modal window
  $("body").on( "click", ".single-post-card, .single-post-list", function() {
    var h4 = $(this).find('.card .card-block .post-text').html();
    var title = $(this).find('.post-content .title ').html();
    var content = $(this).find('.post-content .content ').html();
    $('.modal-header .posted-by').text(h4);
    $('.loaded-data .title ').text(title);
    $('.loaded-data .content ').text(content);
    $('.myModal').modal('show');
  });
});