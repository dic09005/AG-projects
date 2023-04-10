
// Function is for toggling the menu button x or burger

function toggleButton(x) {
    x.classList.toggle("change");
}

// Function is for toggling the menu open 

function toggleMenu() {
    document.getElementById('primaryNav').classList.toggle('open');
}

// Make button to return to top visible after scrolling down

let mybutton = document.getElementById('myBtn');

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        mybutton.setAttribute("style", "display: block;")
    } else {
        mybutton.setAttribute("style", "display: none;")
    }
  }

function topFunction() {
  document.documentElement.scrollTop = 0;
}
