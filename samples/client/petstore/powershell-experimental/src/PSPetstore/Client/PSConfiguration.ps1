#
# OpenAPI Petstore
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get the configuration object 'PSConfiguration'.

.DESCRIPTION

Get the configuration object 'PSConfiguration'.

.OUTPUTS

System.Collections.Hashtable
#>
function Get-PSConfiguration {

    $Configuration = $Script:Configuration

    if ([string]::IsNullOrEmpty($Configuration["BaseUrl"])) {
        $Configuration["BaseUrl"] = "http://petstore.swagger.io/v2";
    }

    if (!$Configuration.containsKey("Username")) {
        $Configuration["Username"] = $null
    }
    if (!$Configuration.containsKey("Password")) {
        $Configuration["Password"] = $null
    }
    if (!$Configuration.containsKey("AccessToken")) {
        $Configuration["AccessToken"] = $null
    }
    if (!$Configuration.containsKey("Cookie")) {
        $Configuration["Cookie"] = $null
    }

    if (!$Configuration["ApiKey"]) {
        $Configuration["ApiKey"] = @{}
    }

    if (!$Configuration["ApiKeyPrefix"]) {
        $Configuration["ApiKeyPrefix"] = @{}
    }

    if (!$Configuration.containsKey("SkipCertificateCheck")) {
        $Configuration["SkipCertificateCheck"] = $false
    }

    Return $Configuration

}

<#
.SYNOPSIS

Set the configuration.

.DESCRIPTION

Set the configuration.

.PARAMETER BaseUrl
Base URL of the HTTP endpoints

.PARAMETER Username
Username in HTTP basic authentication

.PARAMETER Passowrd
Password in HTTP basic authentication

.PARAMETER ApiKey
API Keys for authentication/authorization

.PARAMETER ApiKeyPrefix
Prefix in the API Keys

.PARAMETER Cookie
Cookie for authentication/authorization

.PARAMETER AccessToken
Access token for authentication/authorization

.PARAMETER SkipCertificateCheck
Skip certificate verification

.OUTPUTS

System.Collections.Hashtable
#>
function Set-PSConfiguration {

    [CmdletBinding()]
    Param(
        [string]$BaseUrl,
        [AllowEmptyString()]
        [string]$Username,
        [AllowEmptyString()]
        [string]$Password,
        [hashtable]$ApiKey,
        [hashtable]$ApiKeyPrefix,
        [AllowEmptyString()]
        [string]$Cookie,
        [AllowEmptyString()]
        [string]$AccessToken,
        [switch]$PassThru,
        [bool]$SkipCertificateCheck,
        [switch]$Force
    )

    Process {

        If ($BaseUrl) {
            $Script:Configuration["BaseUrl"] = $BaseUrl
        }

        If ($Username) {
            $Script:Configuration['Username'] = $Username
        }

        If ($Password) {
            $Script:Configuration['Password'] = $Password
        }

        If ($ApiKey) {
            $Script:Configuration['ApiKey'] = $ApiKey
        }

        If ($ApiKeyPrefix) {
            $Script:Configuration['ApiKeyPrefix'] = $ApiKeyPrefix
        }

        If ($Cookie) {
            $Script:Configuration['Cookie'] = $Cookie
        }

        If ($AccessToken) {
            $Script:Configuration['AccessToken'] = $AccessToken
        }

        If ($SkipCertificateCheck) {
            $Script:Configuration['SkipCertificateCheck'] = $SkipCertificateCheck
        }
    }
}

<#
.SYNOPSIS

Set the API Key.

.DESCRIPTION

Set the API Key.

.PARAMETER Id
ID of the security schema

.PARAMETER ApiKey
API Key

.OUTPUTS

None
#>
function Set-PSConfigurationApiKey {
    [CmdletBinding()]
    Param(
        [string]$Id,
        [AllowEmptyString()]
        [string]$ApiKey
    )
    Process {
        if (!$Script:Configuration["ApiKey"]) {
            $Script:Configuration["ApiKey"] = @{}
        }
        $Script:Configuration["ApiKey"][$Id] = $ApiKey
    }
}

<#
.SYNOPSIS

Set the API Key prefix.

.DESCRIPTION

Set the API Key prefix.

.PARAMETER Id
ID of the security schema

.PARAMETER ApiKey
API Key prefix

.OUTPUTS

None
#>
function Set-PSConfigurationApiKeyPrefix {
    [CmdletBinding()]
    Param(
        [string]$Id,
        [AllowEmptyString()]
        [string]$ApiKeyPrefix
    )
    Process {
        if (!$Script:Configuration["ApiKeyPrefix"]) {
            $Script:Configuration["ApiKeyPrefix"] = @{}
        }
        $Script:Configuration["ApiKeyPrefix"][$Id] = $ApiKeyPrefix
    }
}
