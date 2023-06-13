function showPopup() {
  const message = messageInput.value;
  // alert(`${message} mama tipsos can  -- `);
}
const messageInput = document.getElementById("messageInput");
const classInput = document.getElementById("classInput");
var targetElement = document.getElementById("showPopupButton");

// Add a click event listener to the button
document.getElementById("showPopupButton").addEventListener("click", showPopup);
var Injbtn = document.getElementsByClassName("injectBtn")[0];

function  (message) {
  alert("asasdasd");
  chrome.tabs.query({ active: true, currentWindow: true }, function (tabs) {
    chrome.tabs.sendMessage(tabs[0].id, message);
  });
}
Injbtn.addEventListener("click", () => {
  const styles = messageInput.value.split(",");
  // alert(classInput.value);

  // increate width
  for (const style of styles) {
    const [property, value] = style.split(":");
    targetElement.style[property.trim()] = value.trim();
  }
  // calling and sending message
  sendMessageToContentScript({ action: "injectCode" });
});

function injectCode(elm) {
  const element = document.getElementById(elm);
  if (element) {
    element.innerHTML = "<h1>Hello, injected code!</h1>";
  }
}
// background.js

// Trigger the code injection when the extension button is clicked
chrome.browserAction.onClicked.addListener(function (tab) {
  sendMessageToContentScript({ action: "injectCode" });
});
