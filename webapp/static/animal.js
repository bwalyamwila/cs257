// Sets up the search button to fetch animal info based on user input when the page loads
window.addEventListener("load", initialize);

function initialize() {
    // Attach the search button click handler to fetch and display animals
    var search_button = document.getElementById('animal_search_button');
    if (search_button) {
        search_button.onclick = onAnimalSearch;
    }
}

// Fetches animal info from the API based on the search input and displays it
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
                // Build HTML for each animal (with image and details)
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
            // Display the results in the search results element
            var resultsElement = document.getElementById('animal_search_results');
            if (resultsElement) {
                resultsElement.innerHTML = resultsHTML;
            }
        })
        .catch(function(error) {
            console.log(error);
        });
}

// On page load, fetches and displays animal info for the animal in the URL path
window.addEventListener("load", function() {
    var animalName = decodeURIComponent(window.location.pathname.split('/').pop());
    var url = '/api/animals/animal_info/' + encodeURIComponent(animalName);

    fetch(url, {method: 'get'})
        .then((response) => response.json())
        .then(function(animalList) {
            var resultsHTML = '';
            for (var k = 0; k < animalList.length; k++) {
                var animal = animalList[k];
                // Build HTML for each animal (details only)
                resultsHTML += `
                    <div class="info-box-with-photo" style="margin-bottom:20px;">
                        <h3>${animal['animal name: '] || ''}</h3>
                        <p><strong>Species:</strong> ${animal['animal species: '] || ''}</p>
                        <p><strong>Lifespan:</strong> ${animal['animal lifespan: '] || ''}</p>
                        <p><strong>Trend:</strong> ${animal['animal trend: '] || ''}</p>
                        <p><strong>Status:</strong> ${animal['animal status: '] || ''}</p>
                        <p><strong>Countries:</strong> ${animal['animal countries: '] || ''}</p>
                        <p><strong>Continents:</strong> ${animal['animal continents: '] || ''}</p>
                    </div>
                `;
            }
            // Display the animal details in the details element
            var resultsElement = document.getElementById('animal-details');
            if (resultsElement) {
                resultsElement.innerHTML = resultsHTML;
            }
        })
        .catch(function(error) {
            document.getElementById('animal-details').innerHTML = "<p>Error loading animal data.</p>";
            console.log(error);
        });

    // Attach search button handler to redirect to new animal page on search
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
