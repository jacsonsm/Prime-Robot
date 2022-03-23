*** Settings ***
Documentation   keywords referente aos testes da tela home do site
Library         SeleniumLibrary
Library         FakerLibrary

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
  Page Should Contain Image  ${IMG.BLOUSE}

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
  Mouse Over  ${PASS_MOUSE}  #//a[@title='Women']

E Clicar na sub categoria "Summer Dresses"
  Wait Until Element Is Visible  ${CAT_DRESSES.SUB_CATEGORIA}  #//a[@title="Summer Dresses"]
  Click Element  ${CAT_DRESSES.SUB_CATEGORIA}  #//a[@title="Summer Dresses"]

Então os produtos da sub-categoria "Summer Dresses" devem ser apresentados com sucesso
  Wait Until Element Is Visible  ${CAT_DRESSES.MENU}
  Title Should Be  ${CAT_DRESSES.TITLE}
  Page Should Contain Image  ${IMG.DRESSES}

Quando Clicar em "Sign in"
  Click Element  ${LOGIN.SIGN_IN}  #//a[@class='login']

E Informar um e-mail válido
  ${EMAIL} =  FakerLibrary.Email
  Wait Until Element Is Visible  email_create
  Title Should Be  ${LOGIN.TITLE}
  Input Text  email_create  ${EMAIL}
  Log To Console  ${EMAIL}

E Clicar em "Create an account"
  Click Element  ${USER.create}  #//button[@name='SubmitCreate']

E Preencher os dados obrigatórios
  Title Should Be  ${LOGIN.TITLE}
  Wait Until Element Is Visible  ${USER.gender1}
  Click Element  ${USER.gender1}
  Input Text  ${USER.CUSTOMERNAME}  ${NAME}
  Input Text  ${USER.customer_lastname}  ${LAST_NAME}
  Input Password  ${USER.passwd}  ${PASSWORD}
  #Select From List By Value  //input[@name='city']  ${CITY}
  Select From List By Value  ${USER.days}  ${DATE.DIA}
  Select From List By Value  ${USER.months}  ${DATE.MES}
  Select From List By Value  ${USER.years}  ${DATE.ANO}
  Click Button  ${USER.newsletter}
  Click Button  ${USER.optin}
  Input Text  ${USER.firstname}  ${NAME}
  Input Text  ${USER.lastname}  ${LAST_NAME}
  Input Text  ${USER.company}  Prime Control
  Input Text  ${USER.address1}  Rua Robot Framework
  Input Text  ${USER.address2}  Automatizando processos
  Input Text  ${USER.city}  ${CITY}
  Select From List By Value  ${USER.id_state}  10
  Input Text  ${USER.postcode}  ${POSTAL_CODE}
 ## Select From List By Value  ${USER.id_country}
  ##Input Text  ${USER.form-control}  ${TEXT}
  Input Text  ${USER.phone}  ${PHONE_NUMBER}
  Input Text  ${USER.phone_mobile}  ${PHONE_NUMBER}
  Input Text  ${USER.Email}  ${EMAIL}

E Submeter cadastro
  Click Button  //span[contains(.,'Register')]

Então conferir se o cadastro foi efetuado com sucesso
  Title Should Be  My account - My Store
  Wait Until Element Is Visible  xpath=//ul[@class="myaccount-link-list"]//a[@title="Orders"]
  Page Should Contain Element  xpath=//h1[@class="page-heading"]

Faker Library teste
  ${cpf}  fakerLibrary.Cpf
  ${name}  fakerLibrary.Name
  ${city}  fakerLibrary.City
  Log To Console  O CPF é: ${cpf}
  Log To Console  O nome é: ${name}
  Log To Console  A cidade é: ${city}
