#!/bin/sh
# Harmless security-demo fixture. No downloads, telemetry, or home-directory writes.
set -eu
if [ -L .demo-tool ]; then
  printf '%s\n' 'Refusing a symlink at .demo-tool.' >&2
  exit 1
fi
mkdir -p .demo-tool
if [ -e .demo-tool/execution-receipt.txt ]; then
  printf '%s\n' 'Receipt already exists; reset the demo first.' >&2
  exit 1
fi
(set -C; printf '%s\n' 'Synthetic demo installer executed. No software was installed.' > .demo-tool/execution-receipt.txt)
printf '%s\n' 'Demo receipt created in this workspace.'
