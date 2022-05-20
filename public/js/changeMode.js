if (!(sessionStorage.mode == "light" || sessionStorage.mode == "night")) {
    sessionStorage.mode = "light"
}

if (sessionStorage.mode == "night") {

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
}
function colorir() {
    if (sessionStorage.mode == "night") {
        sessionStorage.mode = "light"
    }
    else if (sessionStorage.mode == "light") {
        sessionStorage.mode = "night"
    }
    document.location.reload()
}