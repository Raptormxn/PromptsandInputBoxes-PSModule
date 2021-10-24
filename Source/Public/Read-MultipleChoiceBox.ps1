Function Read-MulitpleChoiceBox{  
        <#
      .Synopsis
              Dynamically display choice options based on # of args provided to the function. Returns string value for $Choice
      
      .DESCRIPTION
              Read-MulitpleChoiceBox leverages the Microsoft.VisualBasic assembly System.Windows.MessageBox class to prompt a message box.
              Read-MulitpleChoiceBox dynamically generates up to x choice boxs by dyncmically generating choice boxs based on $args provided to the function
      
      .EXAMPLE
              Read-MulitpleChoiceBox -Title "Proceed with x?" -Message "Would you like to proceed with X? Please choose "Yes" or "No" -Icon Question 
      
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
              #[ValidateScript({$_ -lt 2})]
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
      }
      
        END {
              return $ChoiceResult
      }
      
      }