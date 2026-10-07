component VideoPlayer {
    input source = ""
    input poster = ""
    input autoplay = false
    input loop = false
    input muted = false

    Column {
        gap: 8
        style {
            background: "var(--plt-surface)"
            borderRadius: "var(--plt-radius)"
            padding: 20
            boxShadow: "var(--plt-shadow)"
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
            background: "var(--plt-surface)"
            borderRadius: "var(--plt-radius)"
            padding: 20
            boxShadow: "var(--plt-shadow)"
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
            background: "var(--plt-surface)"
            borderRadius: "var(--plt-radius)"
            border: "1px solid var(--plt-border)"
            boxShadow: "var(--plt-shadow)"
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
            background: "var(--plt-surface)"
            border: "1px solid var(--plt-border)"
            borderRadius: "var(--plt-radius)"
            padding: "var(--plt-pad)"
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
            background: "var(--plt-surface)"
            border: "1px solid var(--plt-border)"
            borderRadius: "var(--plt-radius)"
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
            background: "var(--plt-surface-2)"
            borderRadius: "var(--plt-radius)"
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
            background: "var(--plt-surface-2)"
            borderRadius: "var(--plt-radius)"
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
            background: "var(--plt-surface)"
            borderRadius: "var(--plt-radius)"
            boxShadow: "var(--plt-shadow)"
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
                background: "var(--plt-surface)"
                borderRadius: "var(--plt-radius)"
                boxShadow: "var(--plt-shadow)"
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
