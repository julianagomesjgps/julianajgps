/*
* Lista de Compras
*/

const selectProduto = document.getElementById('selProduto');
const campoLista = document.getElementById('lisPedArea');
const campoValor = document.querySelector('input[name="TextoValor"]');


function compra() {
  let opcaoSelecionada = selectProduto.options[selectProduto.selectedIndex];
  let total = (campoValor.value.length === 0) ? 0 : parseFloat(campoValor.value)
  let produtos = (campoLista.value.length === 0) ? '' : `${campoLista.value} \n`
  if(opcaoSelecionada.value !== "0") {
    campoLista.value = `${produtos} ${opcaoSelecionada.text}`
  
    total = total + parseFloat(opcaoSelecionada.value);
    campoValor.value = total;
  }
  else {
    alert("Nenhum Produto selecionado!");
  }
}
