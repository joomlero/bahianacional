/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function hoverImagen(id){
    var imagen = '';
    switch(id){
        case 'face_book':
            imagen = 'catalog/view/theme/bonfire/images/facebook_nuevo_hover.jpg'
            break;
        case 'twitter':
            imagen = 'catalog/view/theme/bonfire/images/twittw_nuevo_hover.jpg'
            break;
        case 'instagram':
            imagen = 'catalog/view/theme/bonfire/images/instagram_hover.jpg'
            break;
        case 'contacto_icono':
            imagen = 'catalog/view/theme/bonfire/images/contacto_hover.jpg'
            break;
    }
    $("#"+id).attr('src',imagen);
}
function apagaImagen(id){
    var imagen = '';
    switch(id){
        case 'face_book':
            imagen = 'catalog/view/theme/bonfire/images/facebook_nuevo.jpg'
            break;
        case 'twitter':
            imagen = 'catalog/view/theme/bonfire/images/twittw_nuevo.jpg'
            break;
        case 'instagram':
            imagen = 'catalog/view/theme/bonfire/images/instagram.jpg'
            break;
        case 'contacto_icono':
            imagen = 'catalog/view/theme/bonfire/images/contacto.jpg'
            break;
    }
    $("#"+id).attr('src',imagen);
}

function enciende(id){
    $("#"+id).css('color','gray');
}

function apaga(id){
    $("#"+id).css('color','#C2C3C3');
}