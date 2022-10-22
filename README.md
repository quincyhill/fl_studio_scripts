# FL Studio Music Scripts

This is a command line application that allows for easy management of audio downloads for FL Studio

## Requirements

- Create Folders

  - C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Beats
  - C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Samples
  - C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Songs
  - C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs\Downloaded Snippets

- FL Studio

  - These scripts were built to work with FL Studio 20

- Python 3

  - Download at Official python site, try to avoid MS Store (always)
  - When installing checkmark Add Python3 to PATH

- Youtube-dl

  - Use `pip install youtube-dl`

- FFMpeg

  - Download zip at [link](https://github.com/BtbN/FFmpeg-Builds/releases)
  - get the latest one that is ffmpeg-N-#######-g##########-win64-gpl.zip to downloads and unzip it
  - move the unzipped folder to C:\Program Files
  - rename folder to ffmpeg
  - add C:\Program Files\ffmpeg\bin to your PATH

- Update Powershell Settings for Scripts
  - Right click on powershell and run as administrator
  - Enter this command: `Set-ExecutionPolicy RemoteSigned`
  - This allows scripts to be run from powershell, without it the music scripts wont run
