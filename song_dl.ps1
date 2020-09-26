# Gets a url downloads the formatted mp3 and moves it to the song directory for FL Studio
$song_path = "C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Songs"
$url_link = Read-Host "Enter a youtube URL: "
youtube-dl.exe -x --audio-format mp3 $url_link
Move-Item -Path *.mp3 -Destination $song_path