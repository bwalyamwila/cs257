// This file contains the JavaScript code for the continents.html page.

window.addEventListener("load", initialize);

function initialize() {
    var button_element = document.getElementById('databutton');
    if (button_element) {
        button_element.onclick = onDataButtonClick;
    }

    // Add this for animal search
    var search_button = document.getElementById('animal_search_button');
    if (search_button) {
        search_button.onclick = onAnimalSearch;
    }
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}   

function onDataButtonClick() {
        var url = getAPIBaseURL() + '/animals'

        fetch(url, {method: 'get'})

        .then((response) => response.json())
        .then(function(animalsList) {
                var tableBody = '';
                for (var k = 0; k < animalsList.length; k++) {
                tableBody += '<tr>';

                tableBody += '<td>' + animalsList[k]['animal id'] + ')  '
                                    + animalsList[k]['animal name'] + '</td>';
                                
                tableBody += '<td>' + animalsList[k]['animal species'] + '</td>';

                tableBody += '<td>' + animalsList[k]['animal lifespan'] + '</td>';

                tableBody += '</tr>';
                }

                // Put the table body we just built inside the table that's already on the page.
                var resultsTableElement = document.getElementById('results_table');
                if (resultsTableElement) {
                resultsTableElement.innerHTML = tableBody;
                }
    })
    .catch(function(error) {
        console.log(error);
    });
}

// Add this function for animal search
function onAnimalSearch() {
    var searchInput = document.getElementById('animal_search_text');
    var query = '';
    if (searchInput) {
        query = searchInput.value;
    }
    var url = getAPIBaseURL() + '/animals/animal_info/' + encodeURIComponent(query);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var listBody = '';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                listBody += '<li>';
                listBody += '<strong>Name:</strong> ' + (animal['animal name: '] || '') + '<br>';
                listBody += '<strong>Species:</strong> ' + (animal['animal species: '] || '') + '<br>';
                listBody += '<strong>Lifespan:</strong> ' + (animal['animal lifespan: '] || '') + '<br>';
                listBody += '<strong>Trend:</strong> ' + (animal['animal trend: '] || '') + '<br>';
                listBody += '<strong>Status:</strong> ' + (animal['animal status: '] || '') + '<br>';
                listBody += '<strong>Countries:</strong> ' + (animal['animal countries: '] || '') + '<br>';
                listBody += '<strong>Continents:</strong> ' + (animal['animal continents: '] || '');
                listBody += '</li>';
            }
            var resultsElement = document.getElementById('animal_search_results');
            if (resultsElement) {
                resultsElement.innerHTML = listBody;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

