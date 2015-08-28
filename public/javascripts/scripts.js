// console.log('... script loaded');
//
//
// function generateRandomColor(){
//   var red = Math.floor(Math.random()*256);
//   var green = Math.floor(Math.random()*256);
//   var blue = Math.floor(Math.random()*256);
//   return "rgb(" + red + "," + green + "," + blue + ")";
// }
//
// function generateRandomPercentage(){
//   return (Math.floor(Math.random()*200)-50) + "%";
// }
//
// function generateStar(){
//   var star = $('<h1>').html("&#9733;").addClass('star');
//   star.css({color: generateRandomColor()});
//   return star;
// }
//
// function letThereBeAStar(){
//   var star = generateStar();
//   $('body').append(  star  );
//   star.animate({
//     left: generateRandomPercentage(),
//     top: generateRandomPercentage()
//   }, 1000, 'swing', function(){
//     star.fadeOut();
//   });
// }
//
// $(document).ready(function(){
//
//   setInterval(letThereBeAStar, 100);
//
//
//
// });
