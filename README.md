# Example-SignInWithQRCode

Example base for [login form form-login-SignInWithQRCode](https://github.com/mesopelagique/form-login-SignInWithQRCode)

## methods

### to generate website

* onWebRequest: called by `on mobile connection` to display all the pages and manage user web connection

* qrcodeData: generate json string with a new token value for current session
  * The token is generated by cs.Token but only with uuid now (could be encypted, contains expiration date etc)

### for mobile

* onMobileAuth: check mobile session, called by database method `on mobile app authentication`

the code contain example using server memory to keep last token, crypted tokens are better

> // TODO add code with cypted token

## pages of website

### login page

sample of login page in your website, you login with email, password, etc...

![login](login.png)

The user connect and he could access secured resources

### profile page
  
the user could display a profile page (a setting page maybe)

![profile](profile.png)

He could find a button to generate the qr code to authenticate mobile app with same account
