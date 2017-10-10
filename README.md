# PDF S3 Sync

- Creates JSON files with PDFs metadata
- Copies new and updated PDF/JSON files from the `files` directory to an S3 bucket

## Setup

1. Update `config.env`

1. Run `nanobox evar load local config.env`

## Usage

1. Put PDF files inside `files/` folder

1. Run `nanobox run bash script/sync.sh`
