$directions = 'left','right'
$limbs = 'hand','foot'
$colours = 'green','red','blue','yellow'

Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.SelectVoice('Microsoft Zira Desktop')
$speak.Rate = 3

While(1){
    
    $speak.Speak($directions[(Get-Random -Maximum ([array]$directions).count)])
    $speak.Speak($limbs[(Get-Random -Maximum ([array]$limbs).count)])
    $speak.Speak($colours[(Get-Random -Maximum ([array]$colours).count)])
    Start-Sleep -s 3
}
