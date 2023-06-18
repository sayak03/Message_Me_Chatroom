// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import "channels"


function scroll_bottom() {
  const messages = document.getElementById('messages');
  messages.scrollTop = messages.scrollHeight;
}

scroll_bottom();