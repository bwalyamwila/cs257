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

// This is example data that gets used in the click-handler below. Also, the fillColor
// specifies the color those countries should be. There's also a default color specified
// in the Datamap initializer below.
var extraCountryInfo = {

};

function initialize() {
    initializeMap();
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
                            data: extraCountryInfo, // here's some data that will be used by the popup template
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
    // geography.properties.name will be the state/country name (e.g. 'Minnesota')
    var countryName = geography.properties.name;
    var url = getAPIBaseURL() + '/animal/country/' + encodeURIComponent(countryName);

    fetch(url, {method: 'get'})
    .then((response) => response.json())
    .then(function(countryData) {
        var animals = '';
        for (var k = 0; k < countryData.length; k++) {
                var animalName = countryData[k]['animal name'];
                animals += '<a href="/animal/' + encodeURIComponent(animalName) 
                        + '" target="_blank">' + animalName + '</a><br>';
            }
            var resultsDiv = document.getElementById('animal_list');
            if (resultsDiv) {
                resultsDiv.innerHTML = animals;
                }
    })
    
    .catch(function(error) {
    console.log(error);
    });
}

