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
            Mandatory = $False,
            ValueFromPipeline = $True,
            ValueFromPipelineByPropertyName = $True,
            Position = 0
            )]
        [ValidateRange(1,100)]
        [ValidateSet('stringvalue', 'stringvalue')]
        [ValidateScript({Get-ADUser -Filter "UserPrincipalName -eq ''" | select -ExpandProperty UserPrincipalName} )]
        [string[]] $var
      )
    

    BEGIN {}
 
    PROCESS {}
 
    END {}

