*** Settings ***
Documentation   Arquivo de Setup e Teardown

*** Keywords ***
Abrir sessão
  Open Browser  url:blank  ${CONFIG.BROWSER.NOME}
  Go To  ${CONFIG.BROWSER.URL}
  Maximize Browser Window
  #Set Selenium Timeout  ${CONFIG.TIMEOUT}

Fechar sessão
  Capture Page Screenshot
  Close Browser
