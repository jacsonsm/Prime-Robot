*** Settings ***
Documentation   keywords referente aos testes da tela home do site
Library         SeleniumLibrary

*** Keywords ***
Dado que o cliente esteja na tela home do site
  #Debug
  Title Should Be  ${HOME.TITLE}
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

Quando passar o mouse por cima da categoria "Women"
  Mouse Over  //a[@title='Women']

E Clicar na sub categoria "Summer Dresses"
  Wait Until Element Is Visible  //a[@title="Summer Dresses"]
  Click Element  //a[@title="Summer Dresses"]

Então os produtos da sub-categoria "Summer Dresses" devem ser apresentados com sucesso
  Wait Until Element Is Visible  ${CAT_DRESSES.MENU}
  Title Should Be  ${CAT_DRESSES.TITLE}
  Page Should Contain Image  ${IMG_ITENS.DRESSES}

Quando Clicar em "Sign in"
  Click Element  //a[@class='login']

E Informar um e-mail válido
  ${EMAIL} =  FakerLibrary.Email
  Wait Until Element Is Visible  email_create
  Title Should Be  ${LOGIN.TITLE}
  Input Text  email_create  ${EMAIL}
  Log To Console  ${EMAIL}

E Clicar em "Create an account"
  Click Element  //button[@name='SubmitCreate']

E Preencher os dados obrigatórios
  ${NAME} =  FakerLibrary.First Name
  ${LAST_NAME} =  FakerLibrary.Last Name
  ${PHONE_NUMBER} =  FakerLibrary.Phone Number
  ${PASSWORD} =  FakerLibrary.Password
  ${CITY} =  FakerLibrary.City
  Title Should Be  ${LOGIN.TITLE}
  Wait Until Element Is Visible  id_gender1
  Click Element  idgender1
  Input Text  customer_firstname  ${NAME}
  Input Text  customer_lastname  ${LAST_NAME}
  Input Password  passwd  ${PASSWORD}
  Input Text  city  ${CITY}

E Submeter cadastro

Então conferir se o cadastro foi efetuado com sucesso

Faker Library teste
  ${cpf}  fakerLibrary.Cpf
  ${name}  fakerLibrary.Name
  ${city}  fakerLibrary.City
  Log To Console  O CPF é: ${cpf}
  Log To Console  O nome é: ${name}
  Log To Console  A cidade é: ${city}
