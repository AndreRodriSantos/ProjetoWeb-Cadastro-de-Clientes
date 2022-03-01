/* Declarando Variavel */
var btnContato = document.querySelector('.Botao-Contato');
var FecharElemento = document.querySelectorAll('.Fechar-Elemento');

/* CRIANDO ELEMENTO E FUNÇÃO */
    btnContato.addEventListener('click', function(){
    var BoxContato = document.querySelector('.Contato-Info');
    BoxContato.classList.toggle('Abrir');
    this.classList.toggle('Fechar');
})
