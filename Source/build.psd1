@{
    Path = "PromptsandInputBoxes.psd1"
    OutputDirectory = "..\bin\PromptsandInputBoxes"
    Prefix = '.\_PrefixCode.ps1'
    SourceDirectories = 'Classes','Private','Public'
    PublicFilter = 'Public\*.ps1'
    VersionedOutputDirectory = $true
}
