#!/bin/bash
description: >
 Use OSV-Scanner to find existing vulnerabilities affecting your project’s dependencies. OSV-Scanner provides an officially supported frontend to the OSV database that connects a project’s list of dependencies with the vulnerabilities that affect them. Since the OSV.dev database is open source and distributed, it has several benefits in comparison with closed source advisory databases and scanners:

  osv-scan:
    docker:
        - image: cimg/go:1.20.1
    steps:
      - checkout
      - run:
          name: Install OSV CLI 
          command: |
            go install github.com/google/osv-scanner/cmd/osv-scanner@v1
      - run: 
          name: Run osv_scanner 
          command: |
            ls
            osv-scanner -r .
      - run:
          name: Scan for OS Vulnerabilities 
          command: |
            osv-scanner -- ."${PARAM_TO}"