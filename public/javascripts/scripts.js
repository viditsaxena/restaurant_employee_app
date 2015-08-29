console.log('... script loaded');




$(document).ready(function(){

hideTableRows();

});

function hideTableRows(){
  $('td.hide_on_click').on('click', function(){

  $(this).parent('tr').hide(); //completely destroy the tr (remove from DOM)
  });

}
