function voteUp(item_id) {
    $.post(item_id + '/votes');
}

function voteDown(item_id) {
    $.ajax({
        url: item_id + '/votes',
        type: 'DELETE'
    });
}

$(function() {
    $('.vote').on('click', function() {
        itemId = $(this).attr('item-id');
        rating = $('#rating-' + itemId);
        ratingValue = rating.text();
        voteType = $(this).attr('vote-type');

        if(voteType == 'voteUp') {
            voteUp(itemId);
            rating.text(parseInt(ratingValue)+1);
        } else {
            voteDown(itemId);
            rating.text(parseInt(ratingValue)-1);
        }
    });
});
