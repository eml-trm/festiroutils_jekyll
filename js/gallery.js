const band = document.getElementsByClassName('item bands')

let index = 0

for (i = 0; i < band.length; i++) {
    if (i === 0) {
        band[i].className = "item active bands"
    }
}
