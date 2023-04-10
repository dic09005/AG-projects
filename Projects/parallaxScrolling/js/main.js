function toggleMenu() {

    document.getElementById('primaryNav').classList.toggle('open');
}

function myFunction(x) {
    x.classList.toggle("change");
  }

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
