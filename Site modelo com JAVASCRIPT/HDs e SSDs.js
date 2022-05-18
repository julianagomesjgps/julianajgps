const tabMemorias = [
  ["", "Vazio", 0],
  ["HD_WD_500gb_70", "Western Digital", '500 GB',170],
  ["HD_Seagate_1Tb_70", "Seagate", '1 TB',350],
  ["SSD_Samdisk_480Gb_70", "Samdisk", '480 GB',380],
  ["SSD_Kingston_960Gb_70", "Kingston", '960 GB',700],
  ["SSD_Kingston_M2_5000Gb_70", "Kingston", '500 GB',410],
  ["SSD_WD_M2_240Gb_70", "Western Digital", '240 GB',270]
];
const tipo = ["HD Sata III", "SSD Sata III", "SSD M2"];

const titulo = document.getElementById("titDes");
const foto = document.getElementById("imgDes");
const descricao = document.getElementById("prcDes");

function mostra(tp, ind) {
  titulo.innerHTML = tabMemorias[ind][1]
  foto.src = `./Imagens/${tabMemorias[ind][0]}.jpg`;
  descricao.innerHTML = `
  <p>Interface: ${tipo[tp]}</p>
  <p>Capacidade: ${tabMemorias[ind][2]}</p>
  <p>Preço: R$ <span class="preco">${tabMemorias[ind][3]},00</span></p>
  `
}
