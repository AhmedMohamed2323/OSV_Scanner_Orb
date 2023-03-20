#!/bin/bash
osv-scanner --lockfile '$1' | tee osv_output.txt
