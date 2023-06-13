// content.js

// Function to inject code into the specified element
function injectCode() {
  const element = document.getElementById("showPopupButton");
  alert("aasasdasda");
  if (element) {
    element.innerHTML = "<h1>Hello, injected code!</h1>";
  }
  //   const styles = messageInput.value.split(",");
  //   // alert(classInput.value);

  //   // increate width
  //   for (const style of styles) {
  //     const [property, value] = style.split(":");
  //     targetElement.style[property.trim()] = value.trim();
  //   }
}

// Listen for a message from the background script
chrome.runtime.onMessage.addListener(function (request, sender, sendResponse) {
  if (request.action === "injectCode") {
    injectCode();
  }
});
