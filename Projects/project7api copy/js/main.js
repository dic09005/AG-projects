
function cityOrZip() {

  const input = document.querySelector('#location').value
  let numbers = /^[0-9]+$/;
  if(!input.match(numbers)) {

    function getCityName() {
      let input = document.querySelector('#location');
      let value = input.value;
      let savedValue = value;    
    
      let cityName = `${savedValue}`;
      let API_key = "010ae4cfbbe3d9ca795665d0a7389ce1";
    
      let url = `https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=${API_key}&units=imperial`;
    
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
    
      const city = document.querySelector('#city');
      const temp = document.querySelector('#temp');
      const feels_like = document.querySelector('#feels_like');
      const humidity = document.querySelector('#humidity');
      const wind_speed = document.querySelector('#wind_speed');
      const sunrise = document.querySelector('#sunrise');
      const sunset = document.querySelector('#sunset');
      const weatherIcon = document.querySelector('#icon');
      const description = document.querySelector('#description');
    
      function displayWeather(data) {
        city.innerHTML = `City: ${data.name}`;
        temp.innerHTML = `Temp: ${data.main.temp.toFixed(0)}°F`;
        feels_like.innerHTML = `Feels Like: ${data.main.feels_like.toFixed(0)}°F`;
        humidity.innerHTML = `Humidity: ${data.main.humidity.toFixed(0)}%`;
        wind_speed.innerHTML = `Wind Speed: ${data.wind.speed} mph`;
    
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
    
    };
    getCityName()

  } else { 
    function getZipCode() {
      let input = document.querySelector('#zipcode');
      let value = input.value;
      let savedValue = value;
    
    
      let zip = `${savedValue}`;
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
    
      const city = document.querySelector('#city');
      const temp = document.querySelector('#temp');
      const feels_like = document.querySelector('#feels_like');
      const humidity = document.querySelector('#humidity');
      const wind_speed = document.querySelector('#wind_speed');
      const sunrise = document.querySelector('#sunrise');
      const sunset = document.querySelector('#sunset');
      const weatherIcon = document.querySelector('#icon');
      const description = document.querySelector('#description');
    
      function displayWeather(data) {
        city.innerHTML = `City: ${data.name}`;
        temp.innerHTML = `Temp: ${data.main.temp.toFixed(0)}°`;
        feels_like.innerHTML = `Feels Like: ${data.main.feels_like.toFixed(0)}°`;
        humidity.innerHTML = `Humidity: ${data.main.humidity.toFixed(0)}%`;
        wind_speed.innerHTML = `Wind Speed: ${data.wind.speed} mph`;
    
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
    
    };
    getZipCode()
  }

};
































