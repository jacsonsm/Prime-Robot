*** Settings ***
Documentation   Arquivo de mapeamento de Arquivos e Bibliotecas
Library         SeleniumLibrary
Library         DebugLibrary
Library         FakerLibrary  locale=pt_BR
### hooks: Onde esta o setup e o teardown
Resource        hooks.robot
Variables       hooks.yaml
Resource        ../auto/keywords/kws_webautomotion.robot
Resource        ../auto/elements/busca.robot
Resource        ../auto/elements/home.robot
Variables       ../auto/data/busca.yaml
