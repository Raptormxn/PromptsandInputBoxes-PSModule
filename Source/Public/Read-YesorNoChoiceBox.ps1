Function Read-YesorNoChoiceBox{
  <#
.Synopsis
        Displays a "Yes" or "No" message box, returns string value for $Choice

.DESCRIPTION
        Read-YesorNoChoiceBox leverages the Microsoft.VisualBasic assembly System.Windows.MessageBox class to prompt a "Yes" or "No" message box.
        The users choice is stored in the $Choice and returned after the function executes.

.EXAMPLE
        Read-YesorNoChoiceBox -Title "Proceed with x?" -Message "Would you like to proceed with X? Please choose "Yes" or "No" -Icon Question

.PARAMETER Title
        The Title port of the message box. This will appear at the top of the message box window.

.PARAMETER Message
        The Message portion of the message box. This will appear in the center of the message box window.

.PARAMETER Icon
        The Icon portion of the message box. Derived from System.Windows.MessageBox, which only accepts 'Question','Warning','Asterisk','Hand','None' input.
        Depending on the Icon choosen, there will be a respective grpahical icon that will appear in the top right of the message box window.

  #>

  [CmdletBinding()]
  param(
        [Parameter(Mandatory = $true)]
        [ValidateNotNull()]
        [string]$Title,

        [Parameter(Mandatory = $true)]
        [ValidateNotNull()]
        [string]$Message,

        [Parameter(Mandatory = $true)]
        [ValidateSet('Question','Warning','Asterisk','Hand','None')]
        [string]$Icon
 )

  BEGIN {}

  PROCESS {

        #Display Yes or No Message Prompt
        $Choice = [System.Windows.MessageBox]::Show($Message,$Title,'YesNo',$Icon)
}

  END {
        return $Choice
    }
}

