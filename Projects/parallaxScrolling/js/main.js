
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

// Get JSON data for div.car 
const requestURL = 'json/cars.json';
const cards = document.querySelector('.card');

// Create elements to add to the document
const carMake = document.querySelector('#make');
const carModel = document.querySelector('#model');
const carYears = document.querySelector('#years');
const carPic = document.querySelector('#carPic');

fetch(requestURL)
  .then(function (response) {
    return response.json();
  })
  .then(function (jsonObject) {
      //console.table(jsonObject); //for testing
      const cars = jsonObject;  
      displayRandomCar(cars);
  });

// Make a function that can select a random make and model from the JSON file

function displayRandomCar(data) {

    let makes = ["honda","nissan","toyota","mazda","mitsubishi","subaru"];
    const value = Object.values(makes);
    const Value = value[parseInt(Math.random() * value.length)];

    if (Value == "honda") {

      let makeList = [0,1,2,3,4];
      let values = Object.values(makeList);
      let randomValue = values[parseInt(Math.random() * values.length)];

      carMake.innerHTML = `<strong>Make: ${data.honda[randomValue].make}</strong>`;
      carModel.innerHTML = `<strong>Model: ${data.honda[randomValue].model}</strong>`;
      carYears.innerHTML = `<strong>Years: ${data.honda[randomValue].years}</strong>`;

    } else if (Value == "nissan") {

      let makeList = [0,1,2];
      let values = Object.values(makeList);
      let randomValue = values[parseInt(Math.random() * values.length)];

      carMake.innerHTML = `<strong>Make: ${data.nissan[randomValue].make}</strong>`;
      carModel.innerHTML = `<strong>Model: ${data.nissan[randomValue].model}</strong>`;
      carYears.innerHTML = `<strong>Years: ${data.nissan[randomValue].years}</strong>`;

    } else if (Value == "toyota") {

      let makeList = [0,1,2];
      let values = Object.values(makeList);
      let randomValue = values[parseInt(Math.random() * values.length)];

      carMake.innerHTML = `<strong>Make: ${data.toyota[randomValue].make}</strong>`;
      carModel.innerHTML = `<strong>Model: ${data.toyota[randomValue].model}</strong>`;
      carYears.innerHTML = `<strong>Years: ${data.toyota[randomValue].years}</strong>`;
      
    } else if (Value == "mazda") {

      let makeList = [0,1];
      let values = Object.values(makeList);
      let randomValue = values[parseInt(Math.random() * values.length)];
       
      carMake.innerHTML = `<strong>Make: ${data.mazda[randomValue].make}</strong>`;
      carModel.innerHTML = `<strong>Model: ${data.mazda[randomValue].model}</strong>`;
      carYears.innerHTML = `<strong>Years: ${data.mazda[randomValue].years}</strong>`;
      
    } else if (Value == "mitsubishi") {

      carMake.innerHTML = `<strong>Make: ${data.mitsubishi[0].make}</strong>`;
      carModel.innerHTML = `<strong>Model: ${data.mitsubishi[0].model}</strong>`;
      carYears.innerHTML = `<strong>Years: ${data.mitsubishi[0].years}</strong>`;
      
    } else if (Value == "subaru") {

      carMake.innerHTML = `<strong>Make: ${data.subaru[0].make}</strong>`;
      carModel.innerHTML = `<strong>Model: ${data.subaru[0].model}</strong>`;
      carYears.innerHTML = `<strong>Years: ${data.subaru[0].years}</strong>`;
      
    };

}
