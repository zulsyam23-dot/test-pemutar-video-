component VideoPlayer {
    input source = ""
    input poster = ""
    input autoplay = false
    input loop = false
    input muted = false

    Column {
        gap: 8
        style {
            background: "#0f172a"
            borderRadius: "16px"
            padding: 20
            boxShadow: "0 12px 32px rgba(15, 23, 42, 0.35)"
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
            background: "#0f172a"
            borderRadius: "16px"
            padding: 20
            boxShadow: "0 12px 32px rgba(15, 23, 42, 0.35)"
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
            borderRadius: "16px"
            border: "1px solid #e2e8f0"
            boxShadow: "0 4px 16px rgba(15, 23, 42, 0.08)"
            padding: 16
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
            background: "#ffffff"
            border: "1px solid #e2e8f0"
            borderRadius: "999px"
            padding: 10
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
            background: "#ffffff"
            border: "1px solid #e2e8f0"
            borderRadius: "12px"
            padding: 16
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
            background: "#f1f5f9"
            borderRadius: "12px"
            padding: 12
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
            background: "#f1f5f9"
            borderRadius: "12px"
            padding: 12
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
            background: "#ffffff"
            borderRadius: "16px"
            boxShadow: "0 12px 32px rgba(15, 23, 42, 0.15)"
            padding: 32
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
                background: "#ffffff"
                borderRadius: "16px"
                boxShadow: "0 24px 64px rgba(15, 23, 42, 0.25)"
                padding: 24
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

