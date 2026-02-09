Dodecahedron Animation Export
==============================
Animation: Activation 2
Export Date: 2026-02-09 18:42:21
Frame Rate: 60 fps
Resolution: 1920x1080

Converting to Video
-------------------
Use FFmpeg to convert the image sequence to video:

Windows/Mac/Linux:
ffmpeg -framerate 60 -i frame_%06d.png -c:v libx264 -pix_fmt yuv420p -crf 18 output.mp4

For higher quality (larger file):
ffmpeg -framerate 60 -i frame_%06d.png -c:v libx264 -pix_fmt yuv420p -crf 15 -preset slow output_hq.mp4

For web-compatible format:
ffmpeg -framerate 60 -i frame_%06d.png -c:v libx264 -pix_fmt yuv420p -movflags +faststart output_web.mp4

Download FFmpeg: https://ffmpeg.org/download.html
