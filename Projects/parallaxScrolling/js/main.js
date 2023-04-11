
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

const requestURL = 'json/cars.json';
const cards = document.querySelector('.card');

// Create elements to add to the document
const carMake = document.querySelector('#make');
const carModel = document.querySelector('#model');
const carYears = document.querySelector('#years');

fetch(requestURL)
  .then(function (response) {
    return response.json();
  })
  .then(function (jsonObject) {
      console.table(jsonObject); //for testing
      const cars = jsonObject;  
      displayRandomCar(cars);
  });

function displayRandomCar(data) {

    let makeList = [0,1,2,3,4];

    const values = Object.values(makeList);

    const randomValue = values[parseInt(Math.random() * values.length)];



    let makes = ["honda","nissan","toyota","mazda","mitsubishi","subaru"];

    const value = Object.values(makes);

    const Value = value[parseInt(Math.random() * value.length)];
    
    console.log(randomValue);
    console.log(Value);



    carMake.innerHTML = `<strong>Make: ${data.honda[randomValue].make}</strong>`;
    carModel.innerHTML = `<strong>Model: ${data.honda[randomValue].model}</strong>`;
    carYears.innerHTML = `<strong>Years: ${data.honda[randomValue].years}</strong>`;

}
