
// This file contains the JavaScript code for the continents.html page.

window.addEventListener("load", initialize);

function initialize() {
        var button_element = document.getElementById('databutton');
        button_element.onclick = onDataButtonClick;
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

