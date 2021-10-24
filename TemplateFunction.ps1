<%
 @"
  <#
    .Synopsis
      Short description
    .DESCRIPTION
      Long description
    .EXAMPLE
      Example of how to use this cmdlet
  #>

    [CmdletBinding()]
    param(
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            Position = 0
            )]
        [ValidateRange(1,100)]
        [ValidateSet('stringvalue', 'stringvalue')]
        [ValidateScript( ValidationLogic. $_ is pulled from param input{Get-ADUser -Filter "UserPrincipalName -eq '$_'" | select -ExpandProperty UserPrincipalName} )]
        [type[]]  $var = "value"
    )

    BEGIN {}
 
    PROCESS {}
 
    END {}

"@
%>