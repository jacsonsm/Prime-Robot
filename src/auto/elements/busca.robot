*** Settings ***
Documentation   Mapeamentos dos elementos da tela de busca

*** Variables ***
&{BUSCA}
...             PRODUTO=//*[@class='price product-price']/ancestor::*[@class='product-image-container']
#...            IMAGEM_PRODUTO= //img[contains(@alt,'Blouse')]
${MENSAGEM}=    //p[@class="alert alert-warning"]
&{IMG}
...             DRESSES=//img[@src='http://automationpractice.com/img/p/2/0/20-home_default.jpg']
...             BLOUSE=//img[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
