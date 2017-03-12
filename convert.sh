ffmpeg -r 24 -i %04d.png -s 960x540 -vf "crop=960:280:0:130" -codec:v libvpx -quality good -cpu-used 0 -b:v 500k -qmin 10 -qmax 42 -maxrate 120k -bufsize 500k -threads 4 -an -pass 2 -f webm output.webm -s 960x540
ffmpeg -r 24 -i %04d.png -s 960x540 -vf crop=960:280:0:130 -codec:v libx264 -pix_fmt yuv420p -preset medium -b:v 128k -pre:v baseline -pass 1 -f mp4 output.mp4
ffmpeg -r 24 -i %04d.png -s 960x540 -vf crop=928:280:16:130 -codec:v libx264 -pix_fmt yuv420p -preset medium -b:v 192k -pass 2 -f mp4 output.mp4
