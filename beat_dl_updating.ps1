# Gets a url downloads the formatted mp3 and moves it to the beat directory for FL Studio
# Also could add a more robust way to clip off the end of the url list so I dont have to copy upto the &List Value


# $youtube_dl_beat_path = "C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Beats\%(title)s prod[%(uploader)s].%(ext)s"
$beatDataPath2 = "C:\Users\12242\Documents\MusicLog\beatlist.csv"
$beatDataPath = "C:\Users\12242\Documents\Scripts\Music\beatlisttest.csv"

# Only use set content to create the file otherwise I DONT want to keep overwritting the entire file when
# Instead I should just be appending to it

if ( !(Test-Path -Path $beatDataPath)) {
    Set-Content -Path $beatDataPath -Value "Id, Item"
    Write-Output "Created New Beat List Log"
}

# this is mostly for testing the looping capabilities, will be useful when the list of beats / music grows
for ($i = 0; $i -lt 100; $i++) {
    $wordValue = "Iter: {0}, test file was written" -f $i
    Add-Content -Path $beatDataPath -Value $wordValue
}

# number of lines
$numberOfLines = Get-Content -Path $beatDataPath



Write-Output $numberOfLines.Count

# This opens the file in an app
# Invoke-Item -Path $beatDataPath




# # simply open the file after the write


# $url_link = Read-Host "Enter a youtube URL"

# Just for testing purposes I will comment this out and figure out some file io with powershell
# youtube-dl.exe -o $youtube_dl_beat_path -x --audio-format mp3 $url_link > log.txt