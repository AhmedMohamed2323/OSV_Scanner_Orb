#!/bin/bash

  # Detect the OS and architecture
  os=$(uname -s | tr '[:upper:]' '[:lower:]')
  case $os in
      darwin)
          os="mac"
          ;;
  esac

  arch=$(uname -m)
  case $arch in
      x86_64)
          arch="amd64"
          ;;
      aarch64)
          arch="arm64"
          ;;
      *)
          echo "Unsupported architecture: $arch"
          exit 1
          ;;
  esac

  # Construct the URL
  # version="1.2.0"
  url="https://github.com/google/osv-scanner/releases/download/v1.2.0/osv-scanner_1.2.0_${os}_${arch}"

  # prompt user for download version
  echo "What version would you like to download?"
  read --version
  if [[ $version =~ ^[0-9].[0-9].[0-9]$ ]]
  then
    # Download the file
    sudo wget -O /bin/osv-scanner "$url"
  else
    "echo Incorrect version specified"
  fi
 