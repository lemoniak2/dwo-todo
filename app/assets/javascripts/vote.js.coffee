voteUp = (item_id) ->
  $.post item_id + '/votes'

voteDown = (item_id) ->
  $.ajax
    url: item_id + '/votes'
    type: 'DELETE'

$ ->
  $('.vote').on 'click', ->
    itemId = $(this).attr('item-id')
    rating = $('#rating-' + itemId)
    ratingValue = rating.text()
    voteType = $(this).attr('vote-type')

    if voteType == 'voteUp'
      voteUp itemId
      rating.text parseInt(ratingValue) + 1
    else
      voteDown itemId
      rating.text parseInt(ratingValue) - 1