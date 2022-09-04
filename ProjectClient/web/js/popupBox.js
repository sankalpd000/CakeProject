/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var modal = document.getElementById("myModal");
var btn = document.getElementById("add");
var close = document.getElementById("close");

function showPopup(){
    modal.style.display = "block";
}

function closePopup(){
    modal.style.display = "none";
}

btn.onclick = function() {
    modal.style.display = "block";
};
            
close.onclick = function() {
    modal.style.display = "none";
};

window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
};