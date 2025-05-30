window.addEventListener("load", initialize);

function initialize() {
        var search_button = document.getElementById('animal_search_button');
        // search_button.onclick = onAnimalsSearch;
        // search_button.onclick = onTrendSearch;
        // search_button.onclick = onStatusSearch;
        // search_button.onclick = onSpeciesSearch;
        search_button.onclick = searchAll;
}

function getAPIBaseURL() {
    var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
    return baseURL;
}   

function searchAll() {
    onAnimalsSearch();
    onSpeciesSearch();
    onStatusSearch();
    onTrendSearch();
}

function onSpeciesSearch() {
    var searchInput = document.getElementById('animal_search_text');
    var query = '';

    if (searchInput) {
        query = searchInput.value;
        var infoTable = document.getElementById('results_table');
        infoTable.innerHTML = '';
    }

    var url = getAPIBaseURL() + '/animals/species/' + encodeURIComponent(query);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var listBody = ''; 
            listBody += '<li><b>SPECIES THAT START WITH "' + encodeURIComponent(query) + '"<b></li>';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                var animalID = animal['animal id'];
                var animalName = animal['animal name'];
                listBody += '<li>';  
                var name = animalName; 
                listBody += '<a onclick="getAnimal(\'' + name.replace(/'/g, "\\'") +  '\', ' + animalID + ')">'
                            + animalName + '</a>';
                //'<a href="/yipee">' + animalName + '</a><br>';//
                listBody += '</li>';
            }
            var resultsElement = document.getElementById('animal_search_results2');
            if (resultsElement) {
                resultsElement.innerHTML = listBody;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

function onStatusSearch() {
    var searchInput = document.getElementById('animal_search_text');
    var query = '';

    if (searchInput) {
        query = searchInput.value;
        var infoTable = document.getElementById('results_table');
        infoTable.innerHTML = '';
    }

    var url = getAPIBaseURL() + '/animals/status/' + encodeURIComponent(query);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var listBody = '';
            listBody += '<li><b>ANIMALS WITH "' + encodeURIComponent(query) + '" STATUS<b></li>';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                var animalID = animal['animal id'];
                var animalName = animal['animal name'];
                listBody += '<li>';  
                var name = animalName; 
                listBody += '<a onclick="getAnimal(\'' + name.replace(/'/g, "\\'") +  '\', ' + animalID + ')">'
                            + animalName + '</a>';
                //'<a href="/yipee">' + animalName + '</a><br>';//
                listBody += '</li>';
            }
            var resultsElement = document.getElementById('animal_search_results3');
            if (resultsElement) {
                resultsElement.innerHTML = listBody;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

//-----------------------------------------------------------------------------------------------------------
function onTrendSearch() {
    var searchInput = document.getElementById('animal_search_text');
    var query = '';

    if (searchInput) {
        query = searchInput.value;
        var infoTable = document.getElementById('results_table');
        infoTable.innerHTML = '';
    }

    var url = getAPIBaseURL() + '/animals/trend/' + encodeURIComponent(query);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var listBody = '';
            listBody += '<li><b>ANIMALS WITH "' + encodeURIComponent(query) + '" TREND<b></li>';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                var animalID = animal['animal id'];
                var animalName = animal['animal name'];
                listBody += '<li>';  
                var name = animalName; 
                listBody += '<a onclick="getAnimal(\'' + name.replace(/'/g, "\\'") +  '\', ' + animalID + ')">'
                            + animalName + '</a>';
                //'<a href="/yipee">' + animalName + '</a><br>';//
                listBody += '</li>';
            }
            var resultsElement = document.getElementById('animal_search_results4');
            if (resultsElement) {
                resultsElement.innerHTML = listBody;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

//----------------------------------------------------------------------------------------------------------
function onAnimalsSearch() {
    var searchInput = document.getElementById('animal_search_text');
    var query = '';

    if (searchInput) {
        query = searchInput.value;
        var infoTable = document.getElementById('results_table');
        infoTable.innerHTML = '';
    }

    var url = getAPIBaseURL() + '/animals/animal_info/' + encodeURIComponent(query);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var listBody = '';
            listBody += '<li><b>ANIMALS WITH NAMES THAT INVOLVE "' + encodeURIComponent(query) + '"<b></li>';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                var animalID = animal['animal id'];
                var animalName = animal['animal name'];
                listBody += '<li>';  
                var name = animalName; 
                listBody += '<a onclick="getAnimal(\'' + name.replace(/'/g, "\\'") +  '\', ' + animalID + ')">'
                            + animalName + '</a>';
                //'<a href="/yipee">' + animalName + '</a><br>';//
                listBody += '</li>';
            }
            var resultsElement = document.getElementById('animal_search_results1');
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
        // var searchList = document.getElementById('animal_search_results');
        // searchList.innerHTML = '';
        
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

// //-------------gets the job done: finds different animal names and gives info about them -----------
// //This file contains the JavaScript code for the false.html page.

// window.addEventListener("load", initialize);

// function initialize() {
//         var search_button = document.getElementById('animal_search_button');
//         search_button.onclick = onAnimalsSearch;
// }

// function getAPIBaseURL() {
//     var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + window.location.port + '/api';
//     return baseURL;
// }   

// function onAnimalsSearch() {
//     var searchInput = document.getElementById('animal_search_text');
//     var query = '';

//     if (searchInput) {
//         query = searchInput.value;
//         var infoTable = document.getElementById('results_table');
//         infoTable.innerHTML = '';
//     }

//     var url = getAPIBaseURL() + '/animals/animal_info/' + encodeURIComponent(query);

//     fetch(url, {method: 'get'})
//         .then((response) => response.json())
//         .then(function(animalList) {
//             var listBody = '';
//             for (var k = 0; k < animalList.length; k++) {
//                 var animal = animalList[k];
//                 var animalID = animal['animal id'];
//                 var animalName = animal['animal name'];
//                 listBody += '<li>';  
//                 var name = animalName; 
//                 listBody += '<a onclick="getAnimal(\'' + name.replace(/'/g, "\\'") +  '\', ' + animalID + ')">'
//                             + animalName + '</a>';
//                 //'<a href="/yipee">' + animalName + '</a><br>';//
//                 listBody += '</li>';
//             }
//             var resultsElement = document.getElementById('animal_search_results');
//             if (resultsElement) {
//                 resultsElement.innerHTML = listBody;
//             }
//         })
//         .catch(function(error) {
//             console.log(error);
//         });
// }

// function getAnimal(animal_name, animal_id) {
//         var url = getAPIBaseURL() + '/animals/animal_info/' + animal_name + '/'; 
//         var searchList = document.getElementById('animal_search_results');
//         searchList.innerHTML = '';
        
//         fetch(url, {method: 'get'})
//         .then((response) => response.json())
//         .then(function(animalsList) {
//                 var tableBody = '';
//                 for (var k = 0; k < animalsList.length; k++) {
//                         tableBody += '<ul>'; 
//                             if (animal_id == animalsList[k]['animal id']) {
//                                 tableBody += '<li>' + 'Name: ' + animalsList[k]['animal name']  + '</li>';               
//                                 tableBody += '<li>' + 'Species: ' + animalsList[k]['animal species']  + '</li>';
//                                 tableBody += '<li>' + 'Lifespan: ' + animalsList[k]['animal lifespan']  + '</li>';
//                                 tableBody += '<li>' + 'Population Trend: ' + animalsList[k]['animal trend']  + '</li>';               
//                                 tableBody += '<li>' + 'Population Status: ' + animalsList[k]['animal status']  + '</li>';
//                                 tableBody += '<li>' + 'Continents Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal continents'] + '</li>' + '</ul>' + '</li>' ;
//                                 tableBody += '<li>' + 'Countries Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal countries'] + '</li>' + '</ul>' + '</li>';
//                             }
//                         tableBody += '</ul>'; 
//                 }
//                 var resultsTableElement = document.getElementById('results_table');
//                 if (resultsTableElement) {
//                     resultsTableElement.innerHTML = tableBody;
//                 }     
                    
//         })
//     .catch(function(error) {
//         console.log(error);
//     });
// }
//------------------------------------------------------------------------------------------

// function getAnimal(animal_name) {
//         var url = getAPIBaseURL() + '/animals/animal_info/' + animal_name + '/'; 
//         var searchList = document.getElementById('animal_search_results');
//         searchList.innerHTML = '';

//         fetch(url, {method: 'get'})

//         .then((response) => response.json())
//         .then(function(animalsList) {
//                 var tableBody = '';
//                 for (var k = 0; k < animalsList.length; k++) {
//                 tableBody += '<ul>'; 
//                     tableBody += '<li>' + 'Name: ' + animalsList[k]['animal name']  + '</li>';               
//                     tableBody += '<li>' + 'Species: ' + animalsList[k]['animal species']  + '</li>';
//                     tableBody += '<li>' + 'Lifespan: ' + animalsList[k]['animal lifespan']  + '</li>';
//                     tableBody += '<li>' + 'Population Trend: ' + animalsList[k]['animal trend']  + '</li>';               
//                     tableBody += '<li>' + 'Population Status: ' + animalsList[k]['animal status']  + '</li>';
//                     tableBody += '<li>' + 'Continents Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal continents'] + '</li>' + '</ul>' + '</li>' ;
//                     tableBody += '<li>' + 'Countries Found In: ' + '<ul>' + '<li>' + animalsList[k]['animal countries'] + '</li>' + '</ul>' + '</li>';
//                 tableBody += '</ul>'; 
        
//                 // tableBody += '<tr>' + '<td>' + 'Name: ' + animalsList[k]['animal name']  + '</td>' + '</tr>';               
//                 // tableBody += '<tr>' + '<td>' + 'Species: ' + animalsList[k]['animal species'] + '</td>' + '</tr>';
//                 // tableBody += '<tr>' + '<td>' + 'Lifespan: ' + animalsList[k]['animal lifespan'] + '</td>' + '</tr>';
//                 // tableBody += '<tr>' + '<td>' + 'Population Trend: ' + animalsList[k]['animal trend'] + '</td>' + '</tr>';               
//                 // tableBody += '<tr>' + '<td>' + 'Population Status: ' + animalsList[k]['animal status'] + '</td>' + '</tr>';
//                 // tableBody += '<tr>' + '<td>' + 'Continents Found In: ' + animalsList[k]['animal continents'] + '</td>' + '</tr>';
//                 // tableBody += '<tr>' + '<td>' + 'Countries Found In: ' + animalsList[k]['animal countries'] + '</td>' + '</tr>';



//                 // tableBody += '<pre> -- ID Name: ' + animalsList[k]['animal id'] 
//                 // + animalsList[k]['animal name'] + ' Species: '
//                 // + animalsList[k]['animal species'] + ' Life Span: ' 
//                 // + animalsList[k]['animal lifespan'];
                
//                 // tableBody += '</pre>'; 

//                 }

//                 // Put the table body we just built inside the table that's already on the page.
//                 var resultsTableElement = document.getElementById('results_table');
//                 if (resultsTableElement) {
//                     resultsTableElement.innerHTML = tableBody;
//                 }
                    
                    
//     })
//     .catch(function(error) {
//         console.log(error);
//     });
// }



// ---------- species list that starts with specific letter ----------
// function onDataButtonClick() {
//         var url = getAPIBaseURL() + '/animals/species/z/'

//         fetch(url, {method: 'get'})

//         .then((response) => response.json())
//         .then(function(animalsList) {
//                 var tableBody = '';
//                 for (var k = 0; k < animalsList.length; k++) {
//                 tableBody += '<tr>';

//                 tableBody += '<td>' + animalsList[k]['animal name'] + '</td>';
//                 tableBody += '<td>' + '&rarr;' + '</td>';
                                
//                 tableBody += '<td>' + animalsList[k]['animal species'] + '</td>';

//                 tableBody += '</tr>';

//                 // tableBody += '<pre> -- ID Name: ' + animalsList[k]['animal id'] 
//                 // + animalsList[k]['animal name'] + ' Species: '
//                 // + animalsList[k]['animal species'] + ' Life Span: ' 
//                 // + animalsList[k]['animal lifespan'];
                
//                 // tableBody += '</pre>'; 

//                 }

//                 // Put the table body we just built inside the table that's already on the page.
//                 var resultsTableElement = document.getElementById('results_table');
//                 if (resultsTableElement) {
//                 resultsTableElement.innerHTML = tableBody;
//                 }
//     })
//     .catch(function(error) {
//         console.log(error);
//     });
// }
// -------------------------------------------------------------------

// --------------- get list of all animals ---------------
// function onDataButtonClick() {
//         var url = getAPIBaseURL() + '/animals/'

//         fetch(url, {method: 'get'})

//         .then((response) => response.json())
//         .then(function(animalsList) {
//                 var tableBody = '';
//                 for (var k = 0; k < animalsList.length; k++) {
//                 tableBody += '<tr>';

//                 tableBody += '<td>' + animalsList[k]['animal id'] + ')  '
//                                     + animalsList[k]['animal name'] + '</td>';
                                
//                 tableBody += '<td>' + animalsList[k]['animal species'] + '</td>';

//                 tableBody += '<td>' + animalsList[k]['animal lifespan'] + '</td>';

//                 tableBody += '</tr>';

//                 // tableBody += '<pre> -- ID Name: ' + animalsList[k]['animal id'] 
//                 // + animalsList[k]['animal name'] + ' Species: '
//                 // + animalsList[k]['animal species'] + ' Life Span: ' 
//                 // + animalsList[k]['animal lifespan'];
                
//                 // tableBody += '</pre>'; 

//                 }

//                 // Put the table body we just built inside the table that's already on the page.
//                 var resultsTableElement = document.getElementById('results_table');
//                 if (resultsTableElement) {
//                 resultsTableElement.innerHTML = tableBody;
//                 }
//     })
//     .catch(function(error) {
//         console.log(error);
//     });
// }
// -------------------------------------------------------