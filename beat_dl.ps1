# Gets a url downloads the formatted mp3 and moves it to the beat directory for FL Studio
# Also could add a more robust way to clip off the end of the url list so I dont have to copy upto the &List Value
$youtube_dl_beat_path = "C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Beats\%(title)s from[%(uploader)s].%(ext)s"
$url_link = Read-Host "Enter a youtube URL: "
youtube-dl.exe -o $youtube_dl_beat_path -x --audio-format mp3 $url_link