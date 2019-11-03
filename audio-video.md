### To extract audio from MP4 file:
`% ffmpeg -i <videofile.mp4> -vn -acodec copy <output.mp3>`

### Making a time-lapse
`% ffmpeg -r 12 -pattern_type glob -i '*.JPG' -s hd1080 -vcodec libx264 -crf 18 -preset slow timelapse.mp4`

### The end
Good reference (https://gist.github.com/protrolium/e0dbd4bb0f1a396fcb55)[https://gist.github.com/protrolium/e0dbd4bb0f1a396fcb55]