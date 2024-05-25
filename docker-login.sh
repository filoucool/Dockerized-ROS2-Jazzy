#!/bin/bash

# A TOKEN.txt file in the same relative directory is needed.
cat ../../TOKEN.txt | docker login https://ghcr.io -u USERNAME --password-stdin
