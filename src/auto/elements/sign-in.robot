*** Settings ***
Documentation   Mapeamento dos elementos para realizar o Login

*** Variables ***
&{LOGIN}
...             TITLE=Login - My Store
...             SIGN_IN=//a[@class='login']
&{USER}
...             create=//button[@name='SubmitCreate']
...             gender1=//input[@type='radio'][contains(@id,'gender1')]
...             CUSTOMERNAME=//input[@name='customer_lastname']
...             customer_lastname=//input[@name='customer_lastname']
...             passwd=//input[@name='passwd']
...             days=//select[@name='days']
...             months=//select[@name='months']
...             years=//select[@name='years']
...             newsletter=//input[@name='newsletter']
...             optin=//input[@name='optin']
...             firstname=//input[@name='firstname']
...             lastname=//input[@name='lastname']
...             company=//input[@name='company']
...             address1=//input[@name='address1']
...             address2=//input[@name='address2']
...             city=//input[@name='city']
...             id_state=//select[@name='id_state']
...             postcode=//input[@name='postcode']
###...          id_country=//select[@name='id_country']
###...          form-control=//textarea[@class='form-control']
...             phone=//input[@name='phone']
...             phone_mobile=//input[@name='phone_mobile']
...             Email=//input[@value='My address']
#Dados Faker Para cadastro
${NAME}=        FakerLibrary.First Name
${LAST_NAME}=   FakerLibrary.Last Name
${PHONE_NUMBER}=  FakerLibrary.Phone Number
${PASSWORD}=    FakerLibrary.Password
${POSTAL_CODE}=  "45995000"
${CITY} =       FakerLibrary.City
${TEXT} =       FakerLibrary.Word
${EMAIL} =      FakerLibrary.Email
&{DATE}
...             DIA=1
...             MES=3
...             ANO=2000
