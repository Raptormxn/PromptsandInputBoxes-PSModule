#Require #PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
Function Read-MulitpleChoiceBox{
        <#
      .Synopsis
              Dynamically display choice options based on # of args provided to the $Choices [array] parameter. Returns string value for $ChoiceResult

      .DESCRIPTION
              Read-MulitpleChoiceBox leverages the PresentationFramework assembly System.Windows.MessageBox class to prompt a message box.
              Read-MulitpleChoiceBox dynamically generate choices based on # of args provided to the $Choices [array] parameter

      .EXAMPLE
              Read-MulitpleChoiceBox -Title "Select a Repo" -Message "Which repository would you like to use?" -Icon Question -Choices @('Git','GitHub','SVN','Azure Repo','BitBucket')

      .PARAMETER Title
              The Title portion of the message box. This will appear at the top of the message box window.

      .PARAMETER Message
              The Message portion of the message box. This will appear in the center of the message box window.

      .PARAMETER Icon
              The Icon portion of the message box. Derived from System.Windows.MessageBox, which only accepts 'Question','Warning','Asterisk','Hand','None' input.
              Depending on the Icon choosen, there will be a respective grpahical icon that will appear in the top right of the message box window.

      .PARAMETER Choices
              Takes an Array of strings which are used to dynamically populate the message box. The $choicesresult will return the selected option from $Choices.

        #>

        [CmdletBinding()]
        param(
              [Parameter(Mandatory = $true,
              Position=0,
              HelpMessage="What would you like the title of the message box to say?")]
              [ValidateNotNull()]
              [string]$Title,

              [Parameter(Mandatory = $true,
              Position=1,
              HelpMessage="What would you like the message box to say?")]
              [ValidateNotNull()]
              [string]$Message,

              [Parameter(Mandatory = $true,
              Position=2)]
              [ValidateSet('Question','Warning','Asterisk','Hand','None')]
              [string]$Icon,

              [Parameter(Mandatory = $true,
              Position=3)]
              [ValidateScript()]
              [string[]]$Choices,

              [System.Int32]$DefaultChoice = 0

        )

        BEGIN {

      }
        PROCESS {

              #Establish a new collection of Choice Labels and Descriptions
              [System.Management.Automation.Host.ChoiceDescription[]]$ChoiceDescCollection = $Choices |
              ForEach-Object { New-Object System.Management.Automation.Host.ChoiceDescription "&$($_)", "Selects $_ as the answer." }

              #Throw Choice Box window
              $ChoiceResult = $Host.UI.PromptForChoice($Title,$Message,$ChoiceDescCollection,$DefaultChoice)

              #Instantiate lookup table
              $lookup = @{}

              #Create dynamic lookup table
              $ChoiceDescCollection |
              ForEach-Object {$lookup.Add($($ChoiceDescCollection.IndexOf($_)),$($_.Label -replace "&"))}

      }

        END {
              #Search the lookup table for the matching choice result
              return $lookup[$ChoiceResult]
      }

}