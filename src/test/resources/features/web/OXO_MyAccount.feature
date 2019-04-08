Feature: Verify OXO My Account Page 

Background: 
	Given user launches the browser and navigates to "OXO_HOME" page 
	
@OXO_MYACCOUNT @OXO_MYACCOUNT_01 @P_MEDIUM
Scenario: Verify whether user is able to sign in
	And user clicks on Sign In link in the header 
	And user enters email "email" 
	And user enters password "Password" 
	And Clicks on login button 
	When user navigates to my account from dropdown 
	Then Verify below Sub/Main Module of MyAccount Page 
		|# Verify following elements in MyAccount |
		|AccountBanner_Img1|
		|AccountBanner_Img2|
		|AccountBannerTittle_Txt|
		|AccountBannerSubTittle_Txt|
		
@OXO_MYACCOUNT @OXO_MYACCOUNT_02 @P_MEDIUM
Scenario: Verify my account dashboard links 
	And user clicks on Sign In link in the header 
	And user enters email "email" 
	And user enters password "Password" 
	And Clicks on login button 
	When user navigates to my account from dropdown 
	Then Verify below Sub/Main Module of MyAccount Page 
		|# Verify following elements in MyAccount |
		|myAccountDash_Lnk|
		|myOrdrDash_Lnk|
		|myWishListDash_Lnk|
		|myAddrBookDash_Lnk|
		|myInfoDash_Lnk|
		
@OXO_MYACCOUNT @OXO_MYACCOUNT_03 @P_MEDIUM
Scenario: Verify whether user is able to add address in my account
	And user clicks on Sign In link in the header 
	And user enters email "emailtempaddress" 
	And user enters password "Password" 
	And Clicks on login button 
	And user navigates to my account from dropdown
	And clicks on address book 
	And clicks on add an address
	And user enters address firstname "firstname" 
	And user enters address lastname "lastname" 
	And user enters address phonenumber "phonenumber"
	And user enters address street address "streetAddress" 
	And user enters address city "city"
	And user selects an address from avs popup
	When user clicks on save address
	Then Verify the message on the page
    |# verify the text message in Address book|
    |Address Book|

@OXO_MYACCOUNT @OXO_MYACCOUNT_04 @P_MEDIUM
Scenario: Verify whether user is able to delete address
	And user clicks on Sign In link in the header 
	And user enters email "emailtempaddress" 
	And user enters password "Password" 
	And Clicks on login button 
	And user navigates to my account from dropdown
	And clicks on address book
	When clicks on delete in address book
	Then Verify below Sub/Main Module of MyAccount Page 
		|# Verify following elements in MyAccount |
		|addAnAddress_Btn|

@OXO_MYACCOUNT @OXO_MYACCOUNT_05 @P_MEDIUM
Scenario: Verify my information section in My Account
	And user clicks on Sign In link in the header 
	And user enters email "emailtempaddress" 
	And user enters password "Password" 
	And Clicks on login button 
	And user navigates to my account from dropdown
	And clicks on address book
	When clicks on my information in address book
	Then Verify below Sub/Main Module of MyAccount Page 
		|# Verify following elements in MyAccount |
		|firstName_Txt|
		|lastName_Txt|

@OXO_MYACCOUNT @OXO_MYACCOUNT_06 @P_MEDIUM
Scenario: Verify my orders section in My Account
	And user clicks on Sign In link in the header 
	And user enters email "emailtempaddress" 
	And user enters password "Password" 
	And Clicks on login button 
	And user navigates to my account from dropdown
	And clicks on address book
	When clicks on my orders
	Then Verify the message on the page
    |# verify the text message in orders section|
    |My Orders|
    |Most Recent Order|
	
	