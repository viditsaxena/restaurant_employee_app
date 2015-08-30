console.log('... script loaded');




$(document).ready(function(){

hideTableRows();
setInterval(ChangeColor, 10);

});

function hideTableRows(){
  $('td.hide_on_click').on('click', function(){

  $(this).parent('tr').remove(); //completely destroy the tr (remove from DOM)
  });

}

function ChangeColor(){
  $('td.time-since').hide();
  var time = $('td.time-since').html();
  time = parseFloat(time);
  var timeLimit = .5;
  if (time > timeLimit){
    $('.time-action').addClass("red");
  } else if (time < timeLimit) {
    $('.time-action').addClass("green");
  }
}
