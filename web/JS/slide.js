var slideIndex = 0;
showSlides();

function showSlides() {
<<<<<<< HEAD
=======
  
>>>>>>> ceee322c1c3dd57d42a0e328b5cf600a588b9fed
  var i;
  var slides1 = document.getElementsByClassName("mySlides-1");
  var slides2 = document.getElementsByClassName("mySlides-2");
  var slides3 = document.getElementsByClassName("mySlides-3");
  for (i = 0; i < slides1.length; i++) {
    slides1[i].style.display = "none";  
    slides2[i].style.display = "none";  
    slides3[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides1.length) {slideIndex = 1}    
  slides1[slideIndex-1].style.display = "block";  
  slides2[slideIndex-1].style.display = "block";  
  slides3[slideIndex-1].style.display = "block";  

  setTimeout(showSlides, 3000); // Change image every 2 seconds
}