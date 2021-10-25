#Require #PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
Function Read-InputBox{
    <#
  .Synopsis
          Presents an instance of Microsoft.VisualBasic.Interaction.InputBox class and returns $Input as a string.

  .DESCRIPTION
          Read-InputBox leverages the Microsoft.VisualBasic assembly Microsoft.VisualBasic.Interaction.InputBox class to prompt an input box.

  .EXAMPLE
          Read-InputBox -Title "Enter Email" -Message "Please enter your email address" -Icon Asterisk

  .PARAMETER Title
          The Title portion of the input box. This will appear at the top of the input box window.

  .PARAMETER Message
          The Message portion of the input box. This will appear in the center of the input box window.

  .PARAMETER Icon
          The Icon portion of the input box. Derived from Microsoft.VisualBasic.Interaction.InputBox, which only accepts 'Question','Warning','Asterisk','Hand','None' input.
          Depending on the Icon choosen, there will be a respective grpahical icon that will appear in the top right of the input box window.

    #>

    [CmdletBinding()]
    param(
          [Parameter(Mandatory = $true,
          Position=0,
          HelpMessage="What would you like the title of the input box to say?")]
          [ValidateNotNull()]
          [string]$Title,

          [Parameter(Mandatory = $true,
          Position=1,
          HelpMessage="What would you like the message box to say?")]
          [ValidateNotNull()]
          [string]$Message,

          [Parameter(Mandatory = $false,
          Position=2)]
          [string]$DefaultResponse = ''
    )

    BEGIN {

  }
    PROCESS {

        #Prompt Input Box
        $UserInput = [Microsoft.VisualBasic.Interaction]::InputBox($Message, $Title, $DefaultResponse)

        #If the user provided an empty response, set $UserInput eq $DefaultResponse
        if ($UserInput -eq '') {$UserInput = $DefaultResponse}

  }

    END {
          #Return the user input
          return $UserInput
  }

}
