"use strict";

require('dotenv').config();

let value = "Seattle";
let savedValue = value;    

let cityName = `${savedValue}`;
let API_key = process.env.API_key;

let url = `https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=${API_key}&units=imperial`;


async function apiFetch() {
    try {
        const response = await fetch(url);
        if (response.ok) {
        const data = await response.json();
        console.log(data);
        } else {
            throw Error(await response.text());
        }
    } catch (error) {
        console.log(error);
    }
}
apiFetch();