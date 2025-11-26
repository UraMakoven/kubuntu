#!/bin/bash

sh -c "$(curl -fsLS chezmoi.io/get)"

~/bin/chezmoi init --apply https://github.com/UraMakoven/kubuntu.git
