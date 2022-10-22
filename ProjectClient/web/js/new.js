/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
	function getPath(){
            var me = document.getElementById("P_ICON"); 
            
            var fileUrl = me.value.split("\\");
            var length = fileUrl.length;
            
            var fileName = fileUrl[2];
            console.log(fileName);
            
            var hiddenEl = document.getElementById("img_name");
            hiddenEl.value = fileName;

	}


