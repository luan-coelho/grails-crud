function confirmacaoParaDeletar() {
    if(confirm("Você tem certeza que deseja deletar este carro?")){
        let button = document.querySelector("[name='deletar']");
        console.log(button)
        button.preventDefault()
    }
}