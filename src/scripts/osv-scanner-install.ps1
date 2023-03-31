
# Construct the URL
$url = https://github.com/google/osv-scanner/releases/download/v1.2.0/osv-scanner_1.2.0_windows_amd64.exe

# Download the file
Invoke-WebRequest -Uri $url -OutFile "$env:TEMP\osv_scanner"
