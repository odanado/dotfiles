#!/bin/bash

set -eux

test "$(uname)" = "Darwin" && ./scripts/install-tools-macos.sh
test "$(uname)" = "Linux" && ./scripts/install-tools-ubuntu.sh
