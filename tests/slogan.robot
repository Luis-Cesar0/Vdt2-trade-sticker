*** Settings ***
Library   Browser


*** Variables ***
${sloganh2}     Conectando colecionadores de figurinhas da copa.
${site}          https://trade-sticker-dev.vercel.app/

*** Test Cases ***
validando o slogan da pagina de login
    New Browser         headless=false
    New Page            ${site}
    Get Text            .logo-container h2    contains    ${sloganh2}
    Take Screenshot