# URL of the MP4 file to download
$URL = "https://github.com/theCore034/computer/raw/main/Nice%20Computer!.mp4"

# Temporary directory to download the file
$TEMP_DIR = [System.IO.Path]::GetTempPath()

# Name for the downloaded file
$FILENAME = "video.mp4"

# Full path to the downloaded file
$FILEPATH = Join-Path -Path $TEMP_DIR -ChildPath $FILENAME

# Download the file using Invoke-WebRequest
Invoke-WebRequest -Uri $URL -OutFile $FILEPATH

# Check if the download is complete
while (!(Test-Path $FILEPATH)) {
    Start-Sleep -Seconds 5
}

# Once download is complete, run the MP4 file in fullscreen
Start-Process -FilePath $FILEPATH -WindowStyle Maximized
