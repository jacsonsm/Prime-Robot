*** Settings ***
Documentation   Aqui estarão presentes todos os cenários de automação WEB
Resource        ../../src/config/package.robot
Test Setup      Abrir sessão
Test Teardown   Fechar sessão

*** Test Cases ***
Cenario: Pesquisando um produto com sucesso
  [Tags]  cenario1
  Dado que o cliente esteja na tela home do site
  Quando realizar a pesquisa de um produto
  Então o produto deve ser apresentado com sucesso

Cenario: Pesquisando um protudo inexistente
  [Tags]  cenario2
  Dado que o cliente esteja na tela home do site
  Quando realizar a pesquisa do produto  calça
  Então é apresentado a mensagem  No results were found for your search "calça"

Cenario: Listar Produtos
  [Tags]  cenario3
  #Debug
  Dado que o cliente esteja na tela home do site
  Quando Passar o mouse por cima da categoria "Women"
  E Clicar na sub categoria "Summer Dresses"
  Então os produtos da sub-categoria "Summer Dresses" devem ser apresentados com sucesso

Cenario: Adicionar cliente
  [Tags]  cenario4
  #Debug
  Dado que o cliente esteja na tela home do site
  Quando Clicar em "Sign in"
  E Informar um e-mail válido
  E Clicar em "Create an account"
  E Preencher os dados obrigatórios
  # E Submeter cadastro
  # Então conferir se o cadastro foi efetuado com sucesso
