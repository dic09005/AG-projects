
// Function is for toggling the menu button x or burger

function toggleButton(x) {
    x.classList.toggle("change");
}

// Function is for toggling the menu open 

function toggleMenu() {
    document.getElementById('primaryNav').classList.toggle('open');
}


// Add event listener
document.addEventListener("mousemove", parallax);
const element = document.querySelector("#parallax");

// Parallax Function
function parallax(e) {
    let _width = window.innerWidth/2;
    let _height = window.innerHeight/2;
    let _mouseX = e.clientX;
    let _mouseY = e.clientY;
    // Amount each png moves
    let _depth1 = `${50 - (_mouseX - _width) * 0.01}% ${50 - (_mouseY - _height) * 0.01}%`;
    let _depth2 = `${50 - (_mouseX - _width) * 0.02}% ${50 - (_mouseY - _height) * 0.02}%`;
    let _depth3 = `${50 - (_mouseX - _width) * 0.06}% ${50 - (_mouseY - _height) * 0.06}%`;
    let x = `${_depth3}, ${_depth2}, ${_depth1}`;
    //console.log(x);
    element.style.backgroundPosition = x;
};

parallax(e);
