function New-MailToURI {
    param (
        $To,
        $Cc,
        $Subject,
        $Body
    )
    if ($Cc) {
        "mailto:$($To)?subject=$([Uri]::EscapeDataString($Subject))&cc=$([Uri]::EscapeDataString($Cc))&body=$([Uri]::EscapeDataString($Body))"
    } else {
        "mailto:$($To)?subject=$([Uri]::EscapeDataString($Subject))&body=$([Uri]::EscapeDataString($Body))"
    }
}