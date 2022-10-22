"""Main module for now"""
import sys
import youtube_dl
import os
from typing import List
import logging
import argparse


win_fl_packs_path = "C:\Program Files\Image-Line\FL Studio 20\Data\Patches\Packs"
mac_fl_packs_path = ""

# return true or false if successfully written to correct spot so a simple check the file is there for all these
def dl_beat(beat_url: str) -> bool:
    # Path depends on operating system, for now test with linux on some temp path
    ydl_opts = {}
    with youtube_dl.YoutubeDL(ydl_opts) as ydl:
        ydl.download(beat_url)
    return True

def dl_beats(beat_urls: List[str]) -> None:
    pass
    ydl_opts = {}
    with youtube_dl.YoutubeDL(ydl_opts) as ydl:
        # Here will do something different with a list of beats
        ydl.download(beat_urls)
    pass

def dl_looper_sample(sample_url: str) -> None:
    pass

def dl_looper_samples(sample_urls: List[str]) -> None:
    pass

def dl_sample(sample_url: str) -> None:
    print(win_fl_packs_path + sample_url)
    pass

def dl_samples(sample_urls: List[str]) -> None:
    pass

ap = argparse.ArgumentParser(description="Various functionality for fl studio scripts")

"""
Examples

# This is for single beats
flrun -c dl_beat -i "youtube.com/blahblahblah"

# This is for multiple beats
flrun -c dl_beats -i "youtube.com/blahblahblah", "youtube.com/blahblahwho"

# This is for a looperman sample
flrun -c dl_looper_sample -i "youtube.com/blahblahblah", "youtube.com/blahblahwho"
"""

if __name__ == "__main__":
    # General note, don't worry too much about error handling, no need to over engineer this project
    # Print out the options the user has 
    ap.add_argument("-c", "--choice", required=True, help="Choice of action")
    ap.add_argument("-i", "--input", required=True, help="Input inputs" )

    # Converts from data to python dictionary
    args = vars(ap.parse_args())

    if(args['choice'] == 'dl_beat'):
        # Download a single beat, the input should also be single
        dl_beat(args['input'])
        pass
    elif(args['choice'] == 'dl_beats'):
        pass
    elif(args['choice'] == 'dl_looper_sample'):
        pass
    elif(args['choice'] == 'dl_looper_samples'):
        pass
    elif(args['choice'] == 'dl_sample'):
        pass
    elif(args['choice'] == 'dl_samples'):
        pass
    else:
        print("Invalid choice!")

    print(f"Hey there {[arg for arg in args.values()]}, its nice to meet you")