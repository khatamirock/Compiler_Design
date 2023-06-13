// background.js

// Function to send a message to the content script
function sendMessageToContentScript(message) {
  chrome.tabs.query({ active: true, currentWindow: true }, function (tabs) {
    chrome.tabs.sendMessage(tabs[0].id, message);
  });
}

// Trigger the code injection when the extension button is clicked
chrome.browserAction.onClicked.addListener(function (tab) {
  sendMessageToContentScript({ action: "injectCode" });
});
