*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
${BASE_URL} =  https://www.starlink.com/
${PREMIUM_URL} =  https://www.starlink.com/premium
#Input Data
${VALID ORDER ADDRESS}  11211 Goodnight Ln, Dallas, TX 75229, USA
${INVALID ORDER ADDRESS}  101110010101101010011001010110100101001100
&{REGISTERED_USER}  Email=tsekhanovskii@hotmail.com  Password=)=&HQ_y^L6a*m^
&{UNREGISTERED_USER}  Email=someone@notregistered.com  Password=TestPassword!  ExpectedErrorMessage=INVALID CREDENTIALS
&{INVALID_PASSWORD_USER}  Email=tsekhanovskii@hotmail.com  Password=TestPassword!  ExpectedErrorMessage=INVALID CREDENTIALS
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=EMAIL REQUIRED
