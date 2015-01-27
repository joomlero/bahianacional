/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function confirmaEmail(){
    var email1 = $("#email").val();
    var email2 = $("#confirma-email").val();
    if( email1 != email2 ){
        $("div#error_email").show();
    } else {
        $("div#error_email").hide();
    }
}