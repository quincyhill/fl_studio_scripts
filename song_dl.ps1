# Gets a url downloads the formatted mp3 and moves it to the song directory for FL Studio
$youtube_dl_song_path = "C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Songs\%(title)s from[%(uploader)s].%(ext)s"
# fixed some simple issues
$url_link = Read-Host "Enter a youtube URL"
# hopefully this outputs the text to the log file, from there I can parse this info and structure it better
youtube-dl.exe -o $youtube_dl_song_path -x --audio-format mp3 $url_link 
