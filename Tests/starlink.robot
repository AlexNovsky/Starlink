*** Settings ***
Documentation  Page object-oriented framework for testing Starlink.com website using Robot Framework syntax
Resource  ./Resources/Common/CommonWeb.robot
Resource  ./Resources/MainPageApp.robot
Resource  ./Resources/OrderAddressApp.robot
Resource  ./Resources/ResidentialPageApp.robot
Resource  ./Resources/BusinessPageApp.robot
Resource  ./Resources/RVPageApp.robot

Suite Setup  Begin Web Test
Suite Teardown  End Web Test

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/starlink.robot

*** Variables ***

*** Test Cases ***
Should be able to access to main page and navigate to all links
    [Documentation]  Check if main page, all links and Info pages are available and loaded properly
    [Tags]  Regression
    MainPageApp.Go to main page
    MainPageApp.Verify main page loaded
    MainPageApp.Verify Logo Clickable
    MainPageApp.Verify Sattelites info available
    MainPageApp.Verify Rural info available
    MainPageApp.Verify Preserving Sky Info Available
    MainPageApp.Verify Clear Space Info Available
    MainPageApp.Verify By Spacex Info Available
    MainPageApp.Verify Open Positions Page Available
    MainPageApp.Verify Starlink Kit Page Available
    MainPageApp.Verify Clear View Page Available
    MainPageApp.Verify Apps Available For Downloading
    MainPageApp.Verify Privacy Policy Address Page Available
    MainPageApp.Verify Privacy Policy Bottom Page Available
    MainPageApp.Verify Visit Spacex Available

Should be able to check service availability for valid address
    [Documentation]  Check if user is able to check availability of Starlink service in particular area and
    [Documentation]  start process of ordering service
    [Tags]  Regression
    OrderAddressApp.Go to main page
#    OrderAddressApp.Verify Valid Address Submitted    #Dissabled due webapp automation restrictions
#    OrderAddressApp.Verify Order Page Loaded          #Dissabled due webapp automation restrictions
    OrderAddressApp.Verify Invalid Address Show Error

Should be able to click on Residential menu item
    [Documentation]  Check if Residential menu item is clickable and page loaded
    [Tags]  Regression
    ResidentialPageApp.Go to main page
    ResidentialPageApp.Verify main page loaded
    ResidentialPageApp.Verify Residential page loaded

Should be able to acess Business page and navigate to all links and read verbiage for Business
    [Documentation]  Check if Business page loaded from the main menu and contains all required information and links
    [Tags]  Regression
    BusinessPageApp.Go to main page
    BusinessPageApp.Verify Main page loaded
    BusinessPageApp.Verify Business page loaded
    BusinessPageApp.Verify Page contains address textfield
    BusinessPageApp.Verify Page contains Business page verbiage
    BusinessPageApp.Verify Page contains Apps links
    BusinessPageApp.Verify Page contains hyperlinks

Should be able to acess new RV page and navigate to all links and read verbiage for current RV page
    [Documentation]  Check if Business page loaded from the main menu and contains all required information and links
    [Tags]  Regression
    RVPAgeApp.Go to main page
    RVPAgeApp.Verify Main page loaded
    RVPAgeApp.Verify RV Page Loaded
    RVPAgeApp.Verify Active Coverage Link Accessible
    RVPAgeApp.Verify Page contains address textfield
    RVPAgeApp.Verify Page contains RV page verbiage
    RVPAgeApp.Verify Page contains Apps links
    RVPAgeApp.Verify Page contains hyperlinks


*** Keywords ***
