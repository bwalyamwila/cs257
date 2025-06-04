// mockup1.js - JavaScript for the animal information web application
// Runs when the page loads; sets up button click handlers
window.addEventListener("load", initialize);

function initialize() {
    // Set up the data button to fetch and display all animals
    var button_element = document.getElementById('databutton');
    if (button_element) {
        button_element.onclick = onDataButtonClick;
    }

    // Set up the animal search button to redirect to animal info page
    var search_button = document.getElementById('animal_search_button');
    if (search_button) {
        search_button.onclick = onAnimalSearch;
    }
}

// Returns the base URL for API requests
function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}   

// Fetches all animals from the API and displays them in a table
function onDataButtonClick() {
    var url = getAPIBaseURL() + '/animals'; // Endpoint to fetch all animals
    fetch(url, {method: 'get'}) 
        .then((response) => response.json())
        .then(function(animalsList) {
            // Build table rows for each animal
            var tableBody = '';
            for (var k = 0; k < animalsList.length; k++) {
                tableBody += '<tr>';
                tableBody += '<td>' + animalsList[k]['animal id'] + ')  ' + animalsList[k]['animal name'] + '</td>';                 
                tableBody += '<td>' + animalsList[k]['animal species'] + '</td>';
                tableBody += '<td>' + animalsList[k]['animal lifespan'] + '</td>';
                tableBody += '</tr>';
            }
            // Insert the rows into the table element on the page
            var resultsTableElement = document.getElementById('results_table');
            if (resultsTableElement) {
                resultsTableElement.innerHTML = tableBody;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

// Handles the animal search: redirects to the animal info page for the searched animal
function onAnimalSearch() {
    var searchInput = document.getElementById('animal_search_text');
    var query = '';
    if (searchInput) {
        query = searchInput.value.trim();
    }
    if (query) {
        // Redirect to a new page for the animal
        window.location.href = '/animal/' + encodeURIComponent(query);
    }
}

