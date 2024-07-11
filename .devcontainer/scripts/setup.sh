#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y curl unzip xz-utils zip libglu1-mesa

# Install Flutter
FLUTTER_VERSION="stable"
FLUTTER_DIR="$HOME/flutter"
if [ ! -d "$FLUTTER_DIR" ]; then
  git clone https://github.com/flutter/flutter.git -b $FLUTTER_VERSION $FLUTTER_DIR
fi

# Add Flutter to the PATH
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> $HOME/.bashrc
source $HOME/.bashrc

# Enable Flutter web
flutter config --enable-web
