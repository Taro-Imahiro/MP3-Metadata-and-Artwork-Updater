# MP3-Metadata-and-Artwork-Updater
This script automates the process of updating metadata for MP3 files including artist name, album name, track number, and title. Additionally, it searches for and assigns album artwork from the same directory as the MP3 file.

## Features

- **Metadata Update**: You can update the artist name, album name, track number, and title for each MP3 file.
- **Album Artwork Assignment**: Searches for image files in the same directory and assigns the first image(`.jpg` or `.png` files) found as the album cover.
- **Customizable**: Easily modify the script to set your desired artist name, album name, and genre.

## Specification

The script is designed to process MP3 files named in a specific format, where:

- The file name starts with a track number, followed by an underscore (`_`).
- The track title follows the underscore.

For example:

- `01_foo.mp3`
- `02_bar.mp3`
- `03_baz.mp3`

The script extracts the track number from the beginning of the file name and the track title from the portion after the underscore. This allows for automated tagging of each MP3 file with accurate track information and titles based on the file name.

## Features

- **Metadata Update**: Automatically updates the MP3 files' metadata with the artist name, album name, track number, and title extracted from the file name.
- **Album Artwork Assignment**: Automatically searches for image files (`.jpg` or `.png`) in the same directory and assigns the first image found as the album cover.
- **Customizable**: Easy to modify the script to set your desired artist name, album name, and genre for all MP3 files processed.

## Requirements

The script requires `eyeD3`, a powerful tool for manipulating audio files, particularly MP3 files containing ID3 metadata.

### Installation of Required Module

Before using this script, you must have `eyeD3` installed on your system. You can install `eyeD3` using pip, a package manager for Python, or through your Linux distribution's package manager if you are using Debian-based Linux such as Ubuntu:

```bash
pip install eyeD3
```

Or for Debian-based Linux distributions:

```bash
sudo apt-get install eyed3
```

## Usage

1. Adjust the `ARTIST`, `ALBUM`, and `GENRE` variables at the top of the script to match the metadata you wish to apply to your MP3 files.
2. Place the script in the root directory of your MP3 files, or adjust the `BASE_DIR` variable to point to the directory containing your MP3 files.
3. Execute the script:

```bash
./mp3_metadata_artwork_updater.sh
```

## License
This project is licensed under the GPLv2 License.
