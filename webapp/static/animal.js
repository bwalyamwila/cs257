window.addEventListener("load", initialize);

function initialize() {

    var search_button = document.getElementById('animal_search_button');
    if (search_button) {
        search_button.onclick = onAnimalSearch;
    }
}


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
