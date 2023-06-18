import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const messageContainer = document.getElementById('message-container');
    const modMessage = document.createElement('div');
    modMessage.innerHTML = data.mod_message;
    messageContainer.appendChild(modMessage);
    
    scroll_bottom();
  }
});
