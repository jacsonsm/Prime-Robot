*** Settings ***
Documentation     Arquivo de mapeamento de Arquivos e Bibliotecas
Library           SeleniumLibrary
Library           DebugLibrary
Library           FakerLibrary    locale=pt_BR
### hooks: Onde esta o setup e o teardown
Resource          hooks.robot
Variables         hooks.yaml
Resource          ../auto/keywords/kws_webautomotion.robot
Resource          ../auto/elements/busca.robot
Resource          ../auto/elements/home.robot
Resource          ../auto/elements/dresses.robot
Resource          ../auto/elements/t-shirts.robot
Resource          ../auto/elements/sign-in.robot
Resource          ../auto/elements/women.robot
Resource          ../auto/elements/myaccount.robot
Variables         ../auto/data/busca.yaml
