#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"Animation 12\""
  exit 1
fi

ANIM_NAME="$1"
INPUT_DIR="$ANIM_NAME"
OUTPUT_DIR="../docs"
OUTPUT_FILE="$OUTPUT_DIR/$ANIM_NAME.mp4"

if [[ ! -d "$INPUT_DIR" ]]; then
  echo "Error: input directory not found: $INPUT_DIR"
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

ffmpeg -y \
  -framerate 30 \
  -i "$INPUT_DIR/frame_%06d.png" \
  -c:v libx264 \
  -pix_fmt yuv420p \
  -crf 15 \
  -preset slow \
  "$OUTPUT_FILE"

echo "Done: $OUTPUT_FILE"