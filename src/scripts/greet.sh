#!/bin/bash
echo Hello "${PARAM_TO}"

commands:
  osv-scan:
    parameters:
      path:
        type: string
        default: '.'
    steps:
      - run:
          name: Install OSV CLI
          command: go install github.com/google/osv-scanner/cmd/osv-scanner@v1
      - run:
          name: Scan for OS vulnerabilities
          command: osv-scanner -- .

