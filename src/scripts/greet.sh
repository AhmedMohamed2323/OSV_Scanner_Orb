version: 2.1

jobs:
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
          name: Scan for OS Vulnerabilities 
          command: |
            osv-scanner -- .

workflows:
  scan:
    jobs:
      - osv-scan
