function verificaTelefone( campo, tamanho ) {
    let caracteresInvalidos = []
    var strTel = campo.value;

    for (var i = 0; i < 8; i++ ) {
        let c = strTel.charAt(i)
        if (c.match(/\D/)){
            caracteresInvalidos.push(c)
        }
    }

    if(caracteresInvalidos.length > 0){
        alert( "Telefone só pode ter dígitos, caracter " + caracteresInvalidos.join() + " inválido!");
        return false;
    }

    if ( strTel.length != tamanho ) {
        alert(`Telefone tem de ter ${tamanho} dígitos!`);
        return false;
    }

    return true;
}
