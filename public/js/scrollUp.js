window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop >= 300 || document.documentElement.scrollTop >= 300) {

        arrowUp.style.transform = "translateY(-15vh)";
    } else {
        
        arrowUp.style.transform = "translateY(0vh)";
    }
}

function scroll0() {
    window.scrollTo(0, 0)
    
}