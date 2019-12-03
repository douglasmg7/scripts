#!/usr/bin/env node
'use strict';

const htmlparser2 = require("htmlparser2");

let par = function createParse() {
    let strOut = "";
    let tagBr = false;
    let insideStrong = false;
    const parser = new htmlparser2.Parser(
        {
            onopentag(name, attribs) {
                if (name == "strong") {
                    insideStrong = true;
                    tagBr = false;
                } else if (name =="br") {
                    if (tagBr) {
                        strOut += `\n`; 
                        tagBr = false;
                    } else {
                        tagBr = true;
                    }
                }
            },
            onclosetag(tagname) {
                if (tagname == "strong") {
                    insideStrong = false;
                }
            },
            ontext(text) {
                if (insideStrong) {
                    // If upperacase.
                    if (text.toUpperCase() == text) {
                        strOut += `## ${text.trim().replace(/\s*:$/, "")}\n`;
                    } else {
                        strOut += `### ${text.trim()}\n`;
                    }
                } 
                else if (text.trim()) 
                {
                    let strArray = text.split(":");
                    if (strArray.length == 1) {
                        strOut += `${text.trim().replace(/^-\s*/, "")}\n`; 
                        // strOut += `${text.trim()}\n`; 
                    } else {
                        strOut += `### ${strArray[0].trim()}\n${strArray[1].trim()}\n`; 
                    }
                    tagBr = false;
                }
            },
        },
        { decodeEntities: true }
    );
    return function(text){
        strOut = "";
        parser.write(text);
        parser.end();
        return strOut;
    }
}()
let text = "<strong> VAIO FIT 15S. UMA EXPERIÊNCIA SEM LIMITES!  </strong><br /> <br /> <strong> Qualidade e performance </strong> -  Maior processamento gráfico e de dados com o processador Intel® de 7ª geração.<br /> <br /> <strong> Acabamento exclusivo </strong> - Mais fino, mais leve, mais potente e muito mais bonito, com acabamento Chumbo escuro.<br /> <br /> <strong> Design ergonômico </strong> - Maior conforto para longos períodos de trabalho.<br /> <br /> <strong> ESPECIFICAÇÕES TÉCNICAS: </strong><br /> <br /> Processador: Intel® Core™ i5-7200U 2.50GHz (Turbo Boost até 3.10GHz, 3MB Cache)<br /> Sistema Operacional: Windows 10 Home Single Language<br /> Tela: LED 15.6’’ Widescreen, HD resolução HD 1366 x 768 <br /> Memória RAM: 8GB DDR3L com suporte para até 16GB<br /> Slots de Memória: 2 x SO-DIMM DDR3L (um livre)<br /> Disco Rígido (SSD): 256GB, 2.5 pol. SATA III<br /> Teclado: Padrão Português-Brasil de 107 teclas c/ teclado numérico<br /> Mouse: Tipo Touchpad de 2 botões<br /> Leitor de Cartões: SD / SDHC / SDXC / MMC<br /> Unidade Ótica: Não contém<br /> Webcam: Frontal HD (1280 x 720p)<br /> Vídeo: Integrado Intel® HD Graphics 620 com suporte para Microsoft DirectX 12 e OpenGL 4.4<br /> Áudio: Microfone e alto-falantes estéreo embutidos<br /> Rede: Gigabit Ethernet (10/100/1000 Mbps) <br /> Conectividade: Bluethoot 4.2 e Wireless-AC 3165 IEEE 802.11 abgn, 802.11 ac<br /> Conexões:  2 x USB 3.0, 2 x USB 2.0, 1 x HDMI, 1 x VGA, 1 x RJ-45, 1 x Microfone, 1 x Fone e 1 x DC-in (carregador)<br /> Segurança:  abertura para trava tipo Kensington® Lock / Intel® PTT<br /> Carregador: 19V, 2.1A, 40W / 100~240V Automático<br /> Bateria: Li-ion, 4 células, 3200mAh (removível)<br /> <br /> <strong> CARACTERÍSTICAS FÍSICAS: </strong><br /> Cor: Chumbo escuro<br /> Dimensões (A x L x P): 2.28cm x 37.7cm x 25.9cm <br /> Peso Líquido:  2,1 Kg<br /> <br />";
console.log(par(text));
