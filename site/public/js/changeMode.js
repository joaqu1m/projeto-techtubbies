if (!(localStorage.mode == "light" || localStorage.mode == "night")) {
    localStorage.mode = "light"
}

if (localStorage.mode == "night") {

    document.body.classList.add("darkBackground");

    idImgPo.classList.add("darkImgPo");
    idImgTinkyWin.classList.add("darkImgTinkyWin");
    idImgLala.classList.add("darkImgLala");
    idImgDipsy.classList.add("darkImgDipsy");

    idWindPo.classList.add("windDark");
    idWindTinkyWin.classList.add("windDark");
    idWindLala.classList.add("windDark");
    idWindDipsy.classList.add("windDark");

    idWindPo.classList.remove("middlePoUnico");
    idWindTinkyWin.classList.remove("middleTinkyWinUnico");
    idWindLala.classList.remove("middleLalaUnico");
    idWindDipsy.classList.remove("middleDipsyUnico");
    
    idBottomHeader.classList.add("bottomHeaderDark");

    idLogoName.src = "./assets/imgs/techtubbiesDark.png"

    localStorage.jaFoiDark = true
}
function colorir() {
    if (localStorage.jaFoiDark == null && abaComunidade == null) {
        return
    }

    if (localStorage.mode == "night") {
        localStorage.mode = "light"
    }
    else if (localStorage.mode == "light") {
        localStorage.mode = "night"
    }
    document.location.reload()
}