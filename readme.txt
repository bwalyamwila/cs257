AUTHORS: Bwalya, Jacky, Anthony

DATA: This project uses a  dataset of wild animal species, including their scientific names, lifespans, continents, countries, population trends, and conservation statuses.

Copyright: (https://www.kaggle.com/datasets/lainguyn123/animal-planet?select=animals_info.csv)
You can download the dataset directly from Kaggle.
A lot of the data had many problems in terms of some of it being formatted in JSON, alignment issues, and just wrong data input in some fields. We cleaned it up as best we could and kept all the information we used in the project in accurateAnimalInfo.csv]

STATUS: [currently, all features of the web application are working; however, because our data has some repetitions on some devices for some reason we couldn’t figure out, 
information for certain animals is repeated, and so the animals info box might display two of the same animals]

Note: 
Wild Thangs is a web application for exploring global wildlife diversity. 
Users can:
- Search for animals by name from any page using the search bar in the header.
- Browse animals by continent using the home page.
- Click on a continent to see a list of all animals found there.
- Click on a country (from the map) to see animals found in that country.
- Click on an animal name to view detailed information about that animal, including species, lifespan, population trend, status.
- Navigate easily using the navigation bar (Back, Map, Home).

- convert.py generates CSVs for database loading.
- The search, map, continent, country, and animal detail pages are fully functional.
- Animal info boxes and lists are styled for clarity and ease of use.
- All navigation and search features are accessible from every page.

- To run the app, load the CSVs into your PostgreSQL database, update your config with your DB credentials, and run `python3 app.py <host> <port>`.