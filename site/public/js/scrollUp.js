window.onscroll = function() {scrollFunction()};
console.log('1')
function scrollFunction() {
    if (document.body.scrollTop >= 300 || document.documentElement.scrollTop >= 300) {
        
        arrowUp.style.transform = "translateY(-15vh)";
        console.log('2')
    } else {
        
        arrowUp.style.transform = "translateY(0vh)";
        console.log('3')
    }
}
console.log('4')

function scroll0() {
    window.scrollTo(0, 0)
}