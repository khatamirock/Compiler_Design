// content.js

// Function to inject code into the specified element
function injectCode() {
  const element = document.getElementById("myElement");
  if (element) {
    element.innerHTML = "<h1>Hello, injected code!</h1>";
  }
}

// Listen for a message from the background script
chrome.runtime.onMessage.addListener(function (request, sender, sendResponse) {
  if (request.action === "injectCode") {
    injectCode();
  }
});
