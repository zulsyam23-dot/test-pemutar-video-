component VideoPlayer {
    input source = ""
    input poster = ""
    input autoplay = false
    input loop = false
    input muted = false

    Column {
        gap: 8
        style {
            background: "#1e1e2e"
            borderRadius: "12px"
            padding: 16
        }
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

component AudioPlayer {
    input source = ""
    input autoplay = false
    input loop = false

    Column {
        gap: 8
        style {
            background: "#1e1e2e"
            borderRadius: "12px"
            padding: 16
        }
        Audio {
            src: source
            controls: true
            autoplay: autoplay
            loop: loop
        }
    }
}

component ImageCard {
    input src = ""
    input caption = ""

    Card {
        padding: 12
        style {
            background: "#ffffff"
            borderRadius: "12px"
            border: "1px solid #e5e7eb"
        }
        Column {
            gap: 8
            Image {
                src: src
            }
            Text caption
        }
    }
}

component SearchBar {
    input placeholder = "Cari..."
    input value = ""

    Row {
        gap: 8
        style {
            padding: 8
        }
        Input {
            value: value
            placeholder: placeholder
        }
        Button "Cari"
    }
}

component ProgressBar {
    input value = 0.0
    input label = ""

    Column {
        gap: 4
        style {
            padding: 8
        }
        Text label
        Progress {
            value: value
        }
    }
}

component ToggleRow {
    input label = ""
    input checked = false

    Row {
        gap: 8
        style {
            padding: 8
        }
        Switch {
            checked: checked
        }
        Text label
    }
}

component VolumeSlider {
    input value = 50.0

    Row {
        gap: 8
        style {
            padding: 8
        }
        Text "Volume"
        Slider {
            min: 0.0
            max: 100.0
            step: 1.0
            value: value
        }
    }
}

component LoadingOverlay {
    input label = "Memuat..."

    Column {
        gap: 8
        style {
            padding: 24
            alignItems: "center"
        }
        Spinner
        Text label
    }
}

component AlertDialog {
    input open = false
    input title = "Perhatian"
    input message = ""

    state closed = false
    derived shown = open && !closed

    Dialog {
        open: shown
        Column {
            gap: 8
            style {
                padding: 20
                background: "#ffffff"
                borderRadius: "12px"
            }
            Heading title
            Text message
            Button "Tutup" {
                on click {
                    closed = true
                }
            }
        }
    }
}
