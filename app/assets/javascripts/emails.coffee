# /*# Place all the behaviors and hooks related to the matching controller here.
#  *# All this logic will automatically be available in application.js.
#  *# You can use CoffeeScript in this file: http://coffeescript.org/
#  */

function putHtmlInPageContent(html) {
  let pageContentDiv = document.querySelector("div.page__content")
  // Remove current content if any
  if (pageContentDiv.firstChild) pageContentDiv.firstChild.remove()
  // Add the new html
  pageContentDiv.insertAdjacentHTML("afterbegin", html)
}

function putHtmlInEmailList(html) {
  let emailList = document.querySelector("ul.email-list")
  // Add the new html
  emailList.insertAdjacentHTML("afterbegin", html)
}

function addSelectedClass(emailId) {
  // Remove any email-item--selected class on other email-item
  document.querySelectorAll(".email-item--selected").forEach(item => item.classList.remove("email-item--selected"))
  document.getElementById(`email-item-${emailId}`).classList.add("email-item--selected")
}

function addReadStatusClassToElement(elementClass, emailId, readStatus) {
  let emailElement = document.getElementById(`${elementClass}-${emailId}`)
  if (emailElement) {
    // Remove previous read status
    emailElement.classList.remove(`${elementClass}--read`)
    emailElement.classList.remove(`${elementClass}--unread`)
    // Add new read status
    emailElement.classList.add(`${elementClass}--${readStatus}`)
  }
}
function addReadStatusClass(emailId, readStatus) {
  // email-item in list
  addReadStatusClassToElement('email-item', emailId, readStatus)
  // email-details in page__content
  addReadStatusClassToElement('email-details', emailId, readStatus)
}

