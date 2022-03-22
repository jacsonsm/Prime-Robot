*** Settings ***
Documentation   keywords referente aos testes da tela home do site

*** Keywords ***
Dado que o cliente esteja na tela home do site
  #Debug
  Title Should Be  ${HOME.TITULO}
  Wait Until Element Is Visible  ${HOME.MENU}

Quando realizar a pesquisa de um produto
  Input Text  ${HOME.SEARCH}  ${BUSCA_BLOUSE}
  Click Element  ${HOME.BTN_PESQUISAR}

Então o produto deve ser apresentado com sucesso
  Wait Until Element Is Visible  ${BUSCA.PRODUTO}
  Page Should Contain Image  ${BUSCA.IMAGEM_PRODUTO}

Quando realizar a pesquisa do produto
  [Arguments]  ${produto}
  Input Text  ${HOME.SEARCH}  ${produto}
  Click Element  ${HOME.BTN_PESQUISAR}

Então é apresentado a mensagem
  [Arguments]  ${mensagem_erro}
  Wait Until Element Is Visible  ${MENSAGEM}
  ${texto}  Get Text  ${MENSAGEM}
  Should Be Equal As Strings  ${texto}  ${mensagem_erro}

Quando Passar o mouse por cima da categoria "Women"

Quando Passar o mouse por cima da categoria "Women"

Faker Library teste
  ${cpf}  fakerLibrary.Cpf
  ${name}  fakerLibrary.Name
  ${city}  fakerLibrary.City
  Log To Console  O CPF é: ${cpf}
  Log To Console  O nome é: ${name}
  Log To Console  A cidade é: ${city}
