
     
     Function Prompt-Custom3ChoiceBox {
         #Reads input from the operator to set $value
         param([String] $Title, [String] $Message, [String] $Choice0, [String] $Choice1, [String] $Choice2, [Parameter()][ValidateSet('Question','Warning','Asterisk','Hand','None')][string[]]$Icon)
     
         $functionname =  $MyInvocation.InvocationName
     
         #Establish Options and associated choices
         $Option0 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice0",""
         $Option1 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice1",""
         $Option2 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice2",""
        
         #Throw the Options into a Option array
         $Options = [System.Management.Automation.Host.ChoiceDescription[]]($Option0,$Option1,$Option2)
     
         #Throw prompt window
         $choiceresult = $Host.UI.PromptForChoice($Title,$Message,$Options,0)
     
         #output what was chosen to console
         switch ($choiceresult) {
             0 {$choice = $Choice0}
             1 {$choice = $Choice1}
             2 {$choice = $Choice2}
             default {0; Write-Error -ErrorMessage "Unable to resolve choise in function $functionname
                                                    `nDefault choice [$Choice0] was chosen"}
         }
         #Return the choice value
         return $choice
     }
     
     Function Prompt-Custom8ChoiceBox {
         #Reads input from the operator to set $value
         param([String] $Title, [String] $Message, [String] $Choice0, [String] $Choice1, [String] $Choice2,
         [String] $Choice3, [String] $Choice4, [String] $Choice5, [String] $Choice6, [String] $Choice7,
         [Parameter()][ValidateSet('Question','Warning','Asterisk','Hand','None')][string[]]$Icon)
     
         $functionname =  $MyInvocation.InvocationName
     
         #Establish Options and associated choices
         $Option0 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice0",""
         $Option1 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice1",""
         $Option2 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice2",""
         $Option3 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice3",""
         $Option4 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice4",""
         $Option5 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice5",""
         $Option6 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice6",""
         $Option7 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice7",""
        
         #Throw the Options into a Option array
         $Options = [System.Management.Automation.Host.ChoiceDescription[]]($Option0,$Option1,$Option2,$Option3,$Option4,$Option5,$Option6,$Option7)
     
         #Throw prompt window
         $choiceresult = $Host.UI.PromptForChoice($Title,$Message,$Options,0)
     
         #output what was chosen to console
         switch ($choiceresult) {
             0 {$choice = $Choice0}
             1 {$choice = $Choice1}
             2 {$choice = $Choice2}
             3 {$choice = $Choice3}
             4 {$choice = $Choice4}
             5 {$choice = $Choice5}
             6 {$choice = $Choice6}
             7 {$choice = $Choice7}
             default {0; Write-Error -ErrorMessage "Unable to resolve choice in function $functionname
                                                    `nDefault choice [$Choice0] was chosen"}
         }
         #Return the choice value
         return $choice
     }
     
     Function Prompt-Custom10ChoiceBox {
         #Reads input from the operator to set $value
         param([String] $Title, [String] $Message, [String] $Choice0, [String] $Choice1, [String] $Choice2,
         [String] $Choice3, [String] $Choice4, [String] $Choice5, [String] $Choice6, [String] $Choice7,
         [String] $Choice8, [String] $Choice9,    
         [Parameter()][ValidateSet('Question','Warning','Asterisk','Hand','None')][string[]]$Icon)
     
        
         $functionname =  $MyInvocation.InvocationName
     
         #Establish Options and associated choices
         $Option0 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice0",""
         $Option1 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice1",""
         $Option2 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice2",""
         $Option3 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice3",""
         $Option4 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice4",""
         $Option5 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice5",""
         $Option6 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice6",""
         $Option7 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice7",""
         $Option8 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice8",""
         $Option9 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice9",""
     
        
         #Throw the Options into a Option array
         $Options = [System.Management.Automation.Host.ChoiceDescription[]]($Option0,$Option1,$Option2,$Option3,$Option4,$Option5,$Option6,$Option7,$Option8,$Option9)
     
         #Throw prompt window
         $choiceresult = $Host.UI.PromptForChoice($Title,$Message,$Options,0)
     
         #output what was chosen to console
         switch ($choiceresult) {
             0 {$choice = $Choice0}
             1 {$choice = $Choice1}
             2 {$choice = $Choice2}
             3 {$choice = $Choice3}
             4 {$choice = $Choice4}
             5 {$choice = $Choice5}
             6 {$choice = $Choice6}
             7 {$choice = $Choice7}
             8 {$choice = $Choice8}
             9 {$choice = $Choice9}
             default {0; Write-Error -ErrorMessage "Unable to resolve choise in function $functionname
                                                    `nDefault choice [$Choice0] was chosen"}
                 }
     
         #Return the choice value
         return $choice
     
         }
     
     Function Prompt-Custom18ChoiceBox {
         #Reads input from the operator to set $value
         param([String] $Title, [String] $Message, [String] $Choice0, [String] $Choice1, [String] $Choice2,
         [String] $Choice3, [String] $Choice4, [String] $Choice5, [String] $Choice6, [String] $Choice7,
         [String] $Choice10, [String] $Choice11, [String] $Choice12, [String] $Choice13, [String] $Choice14,
          [String] $Choice15, [String] $Choice16, [String] $Choice17)
     
         #Establish Options and associated choices
         $Option0 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice0",""
         $Option1 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice1",""
         $Option2 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice2",""
         $Option3 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice3",""
         $Option4 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice4",""
         $Option5 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice5",""
         $Option6 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice6",""
         $Option7 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice7",""
         $Option8 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice8",""
         $Option9 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice9",""
         $Option10 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice10",""
         $Option11 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice11",""
         $Option12 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice12",""
         $Option13 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice13",""
         $Option14 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice14",""
         $Option15 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice15",""
         $Option16 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice16",""
         $Option17 = New-Object System.Management.Automation.Host.ChoiceDescription "&$Choice17",""
     
        
         #Throw the Options into a Option array
         $Options = [System.Management.Automation.Host.ChoiceDescription[]]($Option0,$Option1,$Option2,$Option3,$Option4,$Option5,$Option6,$Option7,$Option8,$Option9,$Option10,$Option11,$Option12,$Option13,$Option14,$Option15,$Option16,$Option17)
     
         #Throw prompt window
         $choiceresult = $Host.UI.PromptForChoice($Title,$Message,$Options,0)
     
         #output what was chosen to console
         switch ($choiceresult) {
             0 {$choice = $Choice0}
             1 {$choice = $Choice1}
             2 {$choice = $Choice2}
             3 {$choice = $Choice3}
             4 {$choice = $Choice4}
             5 {$choice = $Choice5}
             6 {$choice = $Choice6}
             7 {$choice = $Choice7}
             8 {$choice = $Choice8}
             9 {$choice = $Choice9}
             10 {$choice = $Choice10}
             11 {$choice = $Choice11}
             12 {$choice = $Choice12}
             13 {$choice = $Choice13}
             14 {$choice = $Choice14}
             15 {$choice = $Choice15}
             16 {$choice = $Choice16}
             17 {$choice = $Choice17}
     
             default {0; Write-Error -ErrorMessage "Unable to resolve choise in function $functionname
                                                    `nDefault choice [$Choice0] was chosen"}
                 }
     
         #Return the choice value
         return $choice
     
         }    
     
     Function Prompt-InputBox {
        param([String] $Title, [String] $Message)
     
        #Display Input Box
        $Input = [Microsoft.VisualBasic.Interaction]::InputBox($Message, $Title)
     
        #Return the Yes/No input
        return $Input
     }
     
     Function Prompt-Keyword {
        param([String] $Keyword)
     
        #Display Input Box
        $Input = [Microsoft.VisualBasic.Interaction]::InputBox("Please enter keyword: [$Keyword] to proceed", "Enter Keyword to Proceed")
     
        #Return the input
        return $Input
     }