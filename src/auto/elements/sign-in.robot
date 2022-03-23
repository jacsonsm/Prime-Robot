*** Settings ***
Documentation     Mapeamento dos elementos para realizar o Login

*** Variables ***
&{LOGIN}
...               TITLE=Login - My Store
...               SIGN_IN=//a[@class='login']
...               CHECKPAGE=account-creation_form
${MR}             id:id_gender1
&{USER}
...               SubmitCreate=SubmitCreate
#...              MR=uniform-id_gender1
...               MRS=uniform-id_gender2
...               customer_firstname=customer_firstname
...               customer_lastname=customer_lastname
...               passwd=passwd
...               days=days
...               months=months
...               years=years
...               newsletter=newsletter
...               optin=optin
...               firstname=firstname
...               lastname=lastname
...               company=company
...               address1=address1
...               address2=address2
...               city=city
...               id_state=id_state
...               postcode=postcode
...               other=other
...               phone_mobile=phone_mobile
...               phone=phone
...               alias=alias
...               submitAccount=submitAccount
#Dados Faker Para cadastro
# ${NAME}=        FakerLibrary.First Name
# ${LAST_NAME}=    FakerLibrary.Last Name
# ${PHONE_NUMBER}=    FakerLibrary.Phone Number
# ${PASSWORD}=    FakerLibrary.Password
${POSTAL_CODE}=    45995
# ${CITY} =       FakerLibrary.City
# ${TEXT} =       FakerLibrary.Word
# ${EMAIL} =      FakerLibrary.Email
&{DATE}
...               DIA=1
...               MES=3
...               ANO=2000
