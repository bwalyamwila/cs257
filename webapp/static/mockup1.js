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
            var resultsHTML = '';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                // did use chatgpt to help with this a bit 
                resultsHTML += `
                    <div class="info-box-with-photo" style="margin-bottom:20px;">
                        <h3 style="text-decoration: underline;">
                            <a href="/animal/${animal['animal id'] || ''}">
                                ${animal['animal name: '] || ''}
                            </a>
                        </h3>
                        <p><strong>Species:</strong> ${animal['animal species: '] || ''}</p>
                        <p><strong>Lifespan:</strong> ${animal['animal lifespan: '] || ''}</p>
                        <p><strong>Trend:</strong> ${animal['animal trend: '] || ''}</p>
                        <p><strong>Status:</strong> ${animal['animal status: '] || ''}</p>
                        <p><strong>Countries:</strong> ${animal['animal countries: '] || ''}</p>
                        <p><strong>Continents:</strong> ${animal['animal continents: '] || ''}</p>
                    </div>
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

