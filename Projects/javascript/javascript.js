
import Person from "./class.js";

const person1 = new Person('John', 'John@gmail.com', 'Idaho Falls');
console.log(person1.name);



/*fetch('http://example.com/api/data')
    .then(function(response) {
        if (response.ok) {
        return response.json();
    } else {
        throw new Error('Error: ' + response.status);
    }
    })
    .then(function(data) {
        console.log(data);
    })
    .catch(function(error) {
        console.log(error);
    });
    */