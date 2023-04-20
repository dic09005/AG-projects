


let zip = "83402";
let API_key = "010ae4cfbbe3d9ca795665d0a7389ce1";

let url = `https://api.openweathermap.org/data/2.5/weather?zip=${zip},us&appid=${API_key}&units=imperial`;

async function apiFetch() {
    try {
      const response = await fetch(url);
      if (response.ok) {
        const data = await response.json();
        console.log(data);
        displayWeather(data);
      } else {
          throw Error(await response.text());
      }
    } catch (error) {
        console.log(error);
  }
}
apiFetch();

const cards = document.querySelector('.weathercard');
const temp = document.querySelector('#temp');
const feels_like = document.querySelector('#feels_like');
const humidity = document.querySelector('#humidity');
const wind_speed = document.querySelector('#wind_speed');
const sunrise = document.querySelector('#sunrise');
const sunset = document.querySelector('#sunset');
const weatherIcon = document.querySelector('#icon');
const description = document.querySelector('#description');

function displayWeather(data) {
    temp.innerHTML = `Temp: ${data.main.temp}`;
    feels_like.innerHTML = `Feels Like: ${data.main.feels_like}`;
    humidity.innerHTML = `Humidity: ${data.main.humidity}`;
    wind_speed.innerHTML = `Wind Speed: ${data.wind.speed}`;

    let unixTimestampAM = data.sys.sunrise;
    let millisecondsAM = unixTimestampAM * 1000;
    const dateObjectAM = new Date(millisecondsAM);
    const humanDateFormatAM = dateObjectAM.toLocaleString();

    sunrise.innerHTML = `Sunrise: ${humanDateFormatAM}`;

    let unixTimestampPM = data.sys.sunset;
    let millisecondsPM = unixTimestampPM * 1000;
    const dateObjectPM = new Date(millisecondsPM);
    const humanDateFormatPM = dateObjectPM.toLocaleString();

    sunset.innerHTML = `Sunset: ${humanDateFormatPM}`;

    const iconsrc = `https://openweathermap.org/img/w/${data.weather[0].icon}.png`;
    const desc = data.weather[0].description;
    weatherIcon.setAttribute('src', iconsrc);
    weatherIcon.setAttribute('alt', desc);

    description.innerHTML = `Description: ${desc}`;
};































