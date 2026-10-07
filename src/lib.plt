component VideoPlayer {
    input source = ""
    input poster = ""
    input autoplay = false
    input loop = false
    input muted = false

    Column {
        gap: 8
        Video {
            src: source
            poster: poster
            controls: true
            autoplay: autoplay
            loop: loop
            muted: muted
        }
    }
}
