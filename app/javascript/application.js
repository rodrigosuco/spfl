// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

let currentIndex = 0;
const images = document.querySelectorAll('.image-slider img');
const totalImages = images.length;

function showNextImage() {
  images[currentIndex].classList.remove('active');
  currentIndex = (currentIndex + 1) % totalImages;
  images[currentIndex].classList.add('active');
}

setInterval(showNextImage, 3000); // Altera a imagem a cada 3 segundos
