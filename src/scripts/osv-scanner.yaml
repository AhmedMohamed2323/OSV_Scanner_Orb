script: |
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
  version="1.2.0"
  url="https://github.com/google/osv-scanner/releases/download/v${version}/osv-scanner_${version}_${os}_${arch}"

  # Download the file
  curl -o osv-scanner-install.sh -L $url
