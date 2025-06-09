/*
 * map-sample-world.js
 * Jeff Ondich
 * 11 November 2020
 *
 * Simple sample using the Datamaps library to show how to incorporate
 * a US map in your project.
 *
 * Datamaps is Copyright (c) 2012 Mark DiMarco
 * https://github.com/markmarkoh/datamaps
 */

window.addEventListener("load", initialize);

function initialize() {
    initializeMap();

    var search_button = document.getElementById('animal_search_button');
    if (search_button) {
        search_button.onclick = onAnimalSearch;
    }
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
} 

function initializeMap() {
    var map = new Datamap({ element: document.getElementById('map-container'), // where in the HTML to put the map
                            scope: 'world', // which map?
                            projection: 'equirectangular', // what map projection? 'mercator' is also an option
                            done: onMapDone, // once the map is loaded, call this function
                            fills: { defaultFill: '#999999' },
                            geographyConfig: {
                                //popupOnHover: false, // You can disable the hover popup
                                //highlightOnHover: false, // You can disable the color change on hover
                                borderColor: '#eeeeee', // state/country border color
                                highlightFillColor: '#99dd99', // color when you hover on a state/country
                                highlightBorderColor: '#000000', // border color when you hover on a state/country
                            }
                          });
}

// This gets called once the map is drawn, so you can set various attributes like
// state/country click-handlers, etc.
function onMapDone(dataMap) {
    dataMap.svg.selectAll('.datamaps-subunit').on('click', onCountryClick);
}


function onCountryClick(geography) {
//When clicked takes the user to a new page
    // geography.properties.name will be the country name
    var countryName = geography.properties.name;
    var url = getAPIBaseURL() + '/animal/country/' + encodeURIComponent(countryName);

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(function(countryData) {
        var animals = '';
        for (var k = 0; k < countryData.length; k++) {
                var animalName = countryData[k]['animal name'];
                animals += '<a href="/animal/' + encodeURIComponent(animalName) 
                        + '">' + animalName + '</a><br>';
            }
            var resultsDiv = document.getElementById('animal_list');
            if (resultsDiv) {
                if (animals) {
                    resultsDiv.innerHTML = animals; 
                    var countryHeader = document.getElementById('country_selected');
                    countryHeader.innerHTML = '<p>' + countryName + '\'s animals: </p>';
                    var instructionsHeader = document.getElementById('instructions');
                    instructionsHeader.innerHTML = '<p>⭐Click on an animal to learn more about it!</p> <p>⭐Or scroll to the bottom to select another country...</p>';
                    window.scrollTo({ top: 0, behavior: 'smooth' }); //used the code from https://stackoverflow.com/questions/1144805/scroll-to-the-top-of-the-page-using-javascript
                } else {
                    var instructionsHeader = document.getElementById('instructions');
                    if (instructionsHeader) {
                        instructionsHeader.innerHTML = 'Sorry, we don\'t have information on animals that live here. 😞 Click on another country!';
                    };
                    resultsDiv.innerHTML = '';
                    var countryHeader = document.getElementById('country_selected');
                    countryHeader.innerHTML = '';
                    //used the code from https://stackoverflow.com/questions/1144805/scroll-to-the-top-of-the-page-using-javascript
                    window.scrollTo({ top: 0, behavior: 'smooth' }); 
                }
                    
                }
    })
    
    .catch(function(error) {
    console.log(error);
    });
}

// Adds feacture that when an animal is searched, it takes the user to a new page
// and displays the information of the animal searched
function onAnimalSearch() {
    var searchInput = document.getElementById('animal_search_text');
    var query = '';
    if (searchInput) {
        query = searchInput.value;
    }
    var url = '/api/animals/animal_info/' + encodeURIComponent(query);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var resultsHTML = '';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                resultsHTML += `
                        <img src="${imageUrl}" alt="${animal['animal name: '] || 'Animal'}">
                        <h3 style="text-decoration: underline;">${animal['animal name: '] || ''}</h3>
                        <p><strong>Species:</strong> ${animal['animal species: '] || ''}</p>
                        <p><strong>Lifespan:</strong> ${animal['animal lifespan: '] || ''}</p>
                        <p><strong>Trend:</strong> ${animal['animal trend: '] || ''}</p>
                        <p><strong>Status:</strong> ${animal['animal status: '] || ''}</p>
                        <p><strong>Countries:</strong> ${animal['animal countries: '] || ''}</p>
                        <p><strong>Continents:</strong> ${animal['animal continents: '] || ''}</p>
                `;
            }
            var resultsElement = document.getElementById('animal_search_results');
            if (resultsElement) {
                resultsElement.innerHTML = resultsHTML;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

window.addEventListener("load", function() {
    var animalName = decodeURIComponent(window.location.pathname.split('/').pop());
    var url = '/api/animals/animal_info/' + encodeURIComponent(animalName);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var resultsHTML = '';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                resultsHTML += `
                    <div class="info-box-with-photo" style="margin-bottom:20px;">
                        <h3 style="text-decoration: underline;">${animal['animal name: '] || ''}</h3>
                        <p><strong>Species:</strong> ${animal['animal species: '] || ''}</p>
                        <p><strong>Lifespan:</strong> ${animal['animal lifespan: '] || ''}</p>
                        <p><strong>Trend:</strong> ${animal['animal trend: '] || ''}</p>
                        <p><strong>Status:</strong> ${animal['animal status: '] || ''}</p>
                        <p><strong>Countries:</strong> ${animal['animal countries: '] || ''}</p>
                        <p><strong>Continents:</strong> ${animal['animal continents: '] || ''}</p>
                    </div>
                `;
            }
            var resultsElement = document.getElementById('animal-details');
            if (resultsElement) {
                resultsElement.innerHTML = resultsHTML;
            }
        })
        .catch(function(error) {
            document.getElementById('animal-details').innerHTML = "<p>Error loading animal data.</p>";
            console.log(error);
        });

//Adds search feature to map page
    var searchButton = document.getElementById('animal_search_button');
    if (searchButton) {
        searchButton.onclick = function() {
            var searchInput = document.getElementById('animal_search_text');
            var query = '';
            if (searchInput) {
                query = searchInput.value.trim();
            }
            if (query) {
                window.location.href = '/animal/' + encodeURIComponent(query);
            }
        };
    }
});

