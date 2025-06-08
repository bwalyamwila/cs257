window.addEventListener("load", initialize);

function initialize() {
    getAllAnimalsInContinent();
    var search_button = document.getElementById('animal_search_button');
    if (search_button) {
        search_button.onclick = onAnimalSearch;
    }
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}   

function getAllAnimalsInContinent() {
    var continentName = decodeURIComponent(window.location.pathname.split('/').pop());
    var url = '/api/animals/continents/' + encodeURIComponent(continentName);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            // used the format of the sorting function provided in the website 
            // https://www.freecodecamp.org/news/how-to-sort-alphabetically-in-javascript/
            animalList.sort(function (a,b) {
                if (a["animal name: "] < b['animal name: ']) {
                    return -1;
                }
                if (a["animal name: "] > b['animal name: ']) {
                    return 1;
                }
                return 0;
            });

            var listBody = ''; 
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                var animalID = animal['animal id: '];
                var animalName = animal['animal name: '];
                listBody += '<li>';  
                var name = animalName; 
                listBody += '<a onclick="getAnimal(\'' + name.replace(/'/g, "\\'") +  '\', ' + animalID + ')">'
                            + animalName + '</a>';
                listBody += '</li>';
            }
            var noResult = '' ; 
            noResult += '<ul>' + '<li>Species: </li>' + 
                    '<li>Lifespan: </li>' + '<li>Population Trend: </li>' +
                    '<li>Population Status: </li>' + '<li>Continents Found In: </li>'+
                    '<li>Countries Found In: </li>' + '</ul>';
            var resultsElement = document.getElementById('animal_list');
            if (resultsElement) {
                resultsElement.innerHTML = listBody;
            }
            var listTitleElement = document.getElementById('list_title');
            if (listTitleElement) {
                listTitleElement.innerHTML = continentName + '\'s' + ' Animal List';
            }
            var emptyResultElement = document.getElementById('results_table');
            if (emptyResultElement) {
                emptyResultElement.innerHTML = noResult;
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
                var title = '';
                for (var k = 0; k < animalsList.length; k++) {
                        tableBody += '<ul>'; 
                            if (animal_id == animalsList[k]['animal id']) {   
                                title = animalsList[k]['animal name: '];         
                                tableBody += '<li>' + 'Species: ' + animalsList[k]['animal species: ']  + '</li>';
                                if (animalsList[k]['animal lifespan: '] === '') {
                                    tableBody += '<li>' + 'Lifespan: ' + animalsList[k]['animal lifespan: ']  + ' N/A </li>';
                                } else {
                                    tableBody += '<li>' + 'Lifespan: ' + animalsList[k]['animal lifespan: ']  + '</li>';
                                }
                                tableBody += '<li>' + 'Population Trend: ' + animalsList[k]['animal trend: ']  + '</li>';               
                                tableBody += '<li>' + 'Population Status: ' + animalsList[k]['animal status: ']  + '</li>';
                                tableBody += '<li>' + 'Continents Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal continents: '] + '</li>' + '</ul>' + '</li>' ;
                                tableBody += '<li>' + 'Countries Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal countries: '] + '</li>' + '</ul>' + '</li>';
                            }
                        tableBody += '</ul>'; 
                }

                var resultsTableElement = document.getElementById('results_table');
                resultsTableElement.innerHTML = '';
                if (resultsTableElement) {
                    resultsTableElement.innerHTML = tableBody;
                }     
                var animalTitleElement = document.getElementById('animal_title');
                animalTitleElement.innerHTML = '';
                if (animalTitleElement) {
                animalTitleElement.innerHTML = title;
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
        query = searchInput.value.trim();
    }
    if (query) {
        // Redirect to a new page for the animal
        window.location.href = '/animal/' + encodeURIComponent(query);
    }
}