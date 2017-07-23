#!/bin/bash
scp -r -o "StrictHostKeyChecking no" /Users/xianghangmi/.vimrc /Users/xianghangmi/.vim  root@$1:
