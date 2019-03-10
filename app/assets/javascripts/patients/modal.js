$(document).on('turbolinks:load', function() {
  // when a patient is clicked, show its full content in a modal window
  $("body").on( "click", ".single-post-card, .single-post-list", function() {
    var h4 = $(this).find('.card .card-block .post-text').html();
    var dob = $(this).find('.post-content .dob ').html();
    var address = $(this).find('.post-content .address ').html();
    var interested = $(this).find('.post-content .view_info').attr('href');
    $('.modal-header .posted-by').text(h4);
    $('.loaded-data .dob ').text(dob);
    $('.loaded-data .address ').text(address);
    $('.loaded-data .view_info a').attr('href', interested);
    $('.myModal').modal('show');
  });
});