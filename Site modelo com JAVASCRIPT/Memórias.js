

var tabMemorias = new Array (4);

tabMemorias[0] = [ "Tipo DDR3 ", "Mem_Kingston_4gb_200", "Kingston", "4 Gb", 200];

tabMemorias[1] = [ "Tipo DDR3", "Mem_Samsung_8g_200", "Samsung", "8Gb", 190];

tabMemorias[2] = [ "Tipo DDR4", "Mem_Fury_8gb_200", "Kingston Fury", "8Gb", 298];

tabMemorias[3] = [ "Tipo DDR4", "Mem_Corsair_8gb_200", "Corsair Vengeance", "8Gb", 245];

function mostraProduto(tipo) {
    var janela = open("", tabMemorias[tipo][0],
                      "location=no, status=no," + "width=290,height=390");
    with (janela.document) {
        write("<!DOCTYPE html>");
        write("<html><head><title>Tipo DDR3</title>");
        write("<link rel='stylesheet' href='PakiMemo.css' type='text/css'");
        write("</head><body>");

        write("<div class='janInfoDetalhe'>");
        write("<h2>", tabMemorias[tipo][0], "</h2></div>");
        write("<div class='janInfoImg'>");
        write("<p><img src='Imagens/",
            tabMemorias[tipo][1], ".jpg' /></p></div>");
        write("<div class='janInfoDetalhe'>");
        write("<div><p>Fabricante: ", tabMemorias[tipo][2], "</p>");
        write("<div><p><p>Capacidade: ", tabMemorias[tipo][3]);
        write("<div><p>Preço: ");
        write(tabMemorias[tipo][4], ",00</p></div>");
        write("<form class='janInfoDetalhe'>");
        write("<input type='button' value='Fechar' ");
        write("onClick='window.close();'/>");
        write("</form>");
        write("</body></html>");
        close();
    }
}
