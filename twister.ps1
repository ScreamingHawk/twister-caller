$directions = 'left','right'
$limbs = 'hand','foot'
$colours = 'green','red','blue','yellow'

Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.SelectVoice('Microsoft Zira Desktop')


Function Select-Random {
    Param ([array]$arr)
    return $arr[(Get-Random -Maximum ($arr).count)]
}

While(1){
    $call = "$(Select-Random($directions)) $(Select-Random($limbs)) $(Select-Random($colours))"
    Write-Host $call
    $speak.Speak($call)
    Start-Sleep -s 3
}
