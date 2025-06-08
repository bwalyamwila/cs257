'''Authors: Anthony, Jacky, Bwalya 

    Date: 2025-28-04'
    Description: l read your dataset's file and write one CSV file for each of the tables in your database design. 
    If you have designed a table named animals, for example, the corresponding CSV file should be named animals.csv,
    and should have the same columns as the table. 

    'Countries' in the context of this code is a string containing multiple contries an animal is found in.
    'Country' is a string containing a single country.
    
    run the script as follows:
    python3 convert.py <accumulated_csv_file>
    The script will create the following CSV files:
    animals.csv
    continents.csv
    countries.csv
    populationTrend.csv
    populationStatus.csv
    animals_continents.csv
    animals_countries.csv
    animals_country.csv
    animals_concern.csv
    '''

import csv
import sys

def main(input_filename):
    # Initialize lists and dictionaries to store data
    animals = [] 
    country_set = set() #contains unique countries so coutnries are not duplicated
    country = [] 
    CountryDict = {} 
    AnimalDict= {} 
    PlacesDict={} 
    CountriesDict={} 
    populationTrendDict={} 
    populationStatusDict={} 
    LinkTable=[] 


    with open(input_filename) as f:
        reader = csv.reader(f)
        for csv_row in reader:
            
            AnimalName = csv_row[0]  # Animal name
            Species = csv_row[1]  # Species name
            LifeSpan = csv_row[2] # Life span
            continents = csv_row[3] # Continent
            countries=csv_row[4] # Country
            PopulationTrend = csv_row[5] # Population trend
            PopulationStatus = csv_row[6] # Population status

            name_key = f'{AnimalName}+{Species}+{LifeSpan}'

            
            if name_key not in AnimalDict: 
                animal_id = len(animals) +1    
                AnimalDict[name_key] = animal_id

            
            animals.append((animal_id, AnimalName, Species, LifeSpan, continents,  countries, PopulationTrend, PopulationStatus)) 
            

        # Check if the continent, country, populationStatus, and populationTrend are already in their dictionaries if not, add them
            if continents not in PlacesDict: 
                place_id = len(PlacesDict) + 1 
                PlacesDict[continents] = place_id 

            if countries not in CountriesDict: 
                country_id = len(CountriesDict) + 1 
                CountriesDict[countries] = country_id 
    
            # Takes the string of countries and splits it into individual countries and adds only unique countries to the country_set  
            cleaned_countries = countries.strip()
            countries_list = cleaned_countries.split(',')
            for c in countries_list:
                if c and c not in country:
                    country_set.add(c.strip())
        
            if PopulationTrend not in populationTrendDict: 
                population_id = len(populationTrendDict) + 1 
                populationTrendDict[PopulationTrend] = population_id 
        
            if PopulationStatus not in populationStatusDict: 
                population_id = len(populationStatusDict) + 1 
                populationStatusDict[PopulationStatus] = population_id 

            LinkTable.append((AnimalDict[name_key], PlacesDict[continents], CountriesDict[countries], populationTrendDict[PopulationTrend], populationStatusDict[PopulationStatus]))

    #Assigns a unique ID to each country individual country
    for index, country in enumerate(sorted(country_set), start=1):
        CountryDict[country.strip()] = index
    
    # Creates a new csv file that connects each animal to each country it is found in
    with open(input_filename, 'r') as f2, open('animal_country.csv', 'w', newline='') as f3:
        reader = csv.reader(f2)
        writer = csv.writer(f3)
        for row in reader:
            animal_name = row[0]
            animal_species = row[1]
            animal_lifespan = row[2]
            animal_name_key = f'{animal_name}+{animal_species}+{animal_lifespan}'
            animal_id = AnimalDict[animal_name_key]

            countries_list = row[4].split(',')
            
            for country in countries_list:
                if country:
                    country_id = CountryDict[country.strip()]
                    print(f'Writing row: {[animal_id, country_id]}')
                    writer.writerow([animal_id, country_id])

#Writes necessary data to CSV files for each table in the database
    with open('animals.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        for animal in animals:
            writer.writerow([animal[0], animal[1], animal[2], animal[3]])  

    
    with open('Continents.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        for place, place_id in PlacesDict.items():
            writer.writerow([place_id, place]) 

    # countries.csv gives a unique ID to a string of countries
    with open ('countries.csv', 'w') as f:
        writer = csv.writer(f)
        for countries, countries_id in CountriesDict.items():
            writer.writerow([countries_id, countries])

    # country.csv gives a unique ID to each country
    with open ('country.csv', 'w') as f:
        writer = csv.writer(f)
        for country, country_id in CountryDict.items():
            writer.writerow([country_id, country])   


    with open ('populationtTrend.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        for trend, trend_id in populationTrendDict.items():
            writer.writerow([trend_id, trend]) 

    with open ('populationStatus.csv', 'w') as f:
        writer = csv.writer(f)
        for status, status_id in populationStatusDict.items():
            writer.writerow([status_id, status])     
    
#Creates a csv file that connects each animals to its respective 
#continent, country, population trend, and population status
    with open('animals_continents.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        for link in LinkTable:
            writer.writerow([link[0], link[1]]) 

    with open ('animals_countries.csv', 'w') as f: 
        writer = csv.writer(f)
        for link in LinkTable:
            writer.writerow([link[0], link[2]]) 

    with open ('animals_concern.csv', 'w') as f:
        writer = csv.writer(f)
        for link in LinkTable:
            writer.writerow([link[0], link[3], link[4]]) 

if len(sys.argv) != 2:
    print(f'Usage: {sys.argv[0]} original_csv_file', file=sys.stderr)
    exit()

main(sys.argv[1])