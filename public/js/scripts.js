//ABRIR E FECHAR MENU
$('.btn-open-menu').click(function(){
    $('.nav').show(800);
    $('.btn-close-menu').show(800);
    $('.btn-open-menu').hide(800);
});

$('.btn-close-menu').click(function(){
    $('.nav').hide(800);
    $('.btn-close-menu').hide(800);
    $('.btn-open-menu').show(800);
});