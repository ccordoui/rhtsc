# Azure Active Directory

## Purpose

Using AAD as an oAuth provider

## Steps

* Go to [Microsoft Entra ID](https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/~/RegisteredApps)/App registrations / New registration and chose a name
* Go to the application
* Get `Endpoints` if needed (some info can also be found in `OpenID Connect metadata document`)
* Get the Client ID (`Application ID`)
* Create a secret in `Add a certificate or secret`
* In Authentification add a `Platform`
* Go in `Token Configuration`
    * `Add optional claim`
    * Add `email` `preferred_username` and any field that you need to query
    * Tick `Turn on the Microsoft Graph email, profile permission (required for claims to appear in token).` 
