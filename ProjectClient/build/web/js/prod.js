/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

var fileContent;
var fileContentEnc;
function getBase64(){
    var reader = new FileReader(); 
    reader.readAsDataURL(event.srcElement.files[0]); 
    
    reader.onload = function () { 
        fileContent = reader.result; 
        fileContentEnc = btoa(fileContent);
        
        alert(fileContentEnc);
        document.getElementById("imgpath").value = fileContentEnc;
        var blob = b64toBlob(fileContent, contentType);
        
    }; 
}


 b64toBlob = (b64Data, contentType='', sliceSize=512) => {
    var encode = btoa(b64Data);
  var byteCharacters = atob(encode);
  var byteArrays = [];

  for (let offset = 0; offset < byteCharacters.length; offset += sliceSize) {
    var slice = byteCharacters.slice(offset, offset + sliceSize);

    var byteNumbers = new Array(slice.length);
    for (let i = 0; i < slice.length; i++) {
      byteNumbers[i] = slice.charCodeAt(i);
    }

    var byteArray = new Uint8Array(byteNumbers);
    byteArrays.push(byteArray);
  }

  getBlob = new Blob(byteArrays, {type: contentType});
  
   var reader1 = new FileReader();
        reader1.onload = function() {
            decode = reader1.result;
        };
        reader1.readAsText(getBlob);
  
  //alert(getBlob);
};

var contentType = 'image/png';
var getBlob;
var decode;
     