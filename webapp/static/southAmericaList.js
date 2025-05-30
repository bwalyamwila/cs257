window.addEventListener("load", initialize);

function initialize() {
    getAllAnimalsInContinent();
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}   

function getAllAnimalsInContinent() {
    var url = getAPIBaseURL() + '/animals/continents/South America'; 

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var listBody = ''; 
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                var animalID = animal['animal id'];
                var animalName = animal['animal name'];
                listBody += '<li>';  
                var name = animalName; 
                listBody += '<a onclick="getAnimal(\'' + name.replace(/'/g, "\\'") +  '\', ' + animalID + ')">'
                            + animalName + '</a>';
                listBody += '</li>';
            }
            var resultsElement = document.getElementById('animal_list');
            if (resultsElement) {
                resultsElement.innerHTML = listBody;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

function getAnimal(animal_name, animal_id) {
        var url = getAPIBaseURL() + '/animals/animal_info/' + animal_name + '/'; 
        
        fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalsList) {
                var tableBody = '';
                for (var k = 0; k < animalsList.length; k++) {
                        tableBody += '<ul>'; 
                            if (animal_id == animalsList[k]['animal id']) {
                                tableBody += '<li>' + 'Name: ' + animalsList[k]['animal name']  + '</li>';               
                                tableBody += '<li>' + 'Species: ' + animalsList[k]['animal species']  + '</li>';
                                tableBody += '<li>' + 'Lifespan: ' + animalsList[k]['animal lifespan']  + '</li>';
                                tableBody += '<li>' + 'Population Trend: ' + animalsList[k]['animal trend']  + '</li>';               
                                tableBody += '<li>' + 'Population Status: ' + animalsList[k]['animal status']  + '</li>';
                                tableBody += '<li>' + 'Continents Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal continents'] + '</li>' + '</ul>' + '</li>' ;
                                tableBody += '<li>' + 'Countries Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal countries'] + '</li>' + '</ul>' + '</li>';
                            }
                        tableBody += '</ul>'; 
                }
                var resultsTableElement = document.getElementById('results_table');
                if (resultsTableElement) {
                    resultsTableElement.innerHTML = tableBody;
                }     
        })
    .catch(function(error) {
        console.log(error);
    });
}