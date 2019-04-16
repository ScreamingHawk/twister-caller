$sound = new-Object System.Media.SoundPlayer;

$directions = 'left.wav','right.wav'
$limbs = 'hand.wav','foot.wav'
$colours = 'green.wav','red.wav','blue.wav','yellow.wav'

While(1){
    $sound.SoundLocation = $directions[(Get-Random -Maximum ([array]$directions).count)]
    $sound.PlaySync();
    $sound.SoundLocation = $limbs[(Get-Random -Maximum ([array]$limbs).count)]
    $sound.PlaySync();
    $sound.SoundLocation = $colours[(Get-Random -Maximum ([array]$colours).count)]
    $sound.PlaySync();
    Start-Sleep -s 3
}
