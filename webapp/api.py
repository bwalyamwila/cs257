import argparse
import flask
import json
import csv

## the Fask blueprint containing routes that serve the API endpoints

import psycopg2
import sys

import config

api = flask.Blueprint('api', __name__)

def get_connection():
    try:
        return psycopg2.connect(database=config.database,
                                user=config.user,
                                password= config.password
                                )
    except Exception as e:
        print(e, file=sys.stderr)
        exit()

@api.route('/animal/country/<country_name>')
def get_animals_country(country_name):
    animals = []
    try:
        query = '''SELECT animals.animal_name 
                    FROM animals , animal_country , country
                    WHERE country.country_name ILIKE CONCAT ('%%', %s, '%%') 
                    AND country.id = animal_country.country_id 
                    AND animals.id = animal_country.animal_id;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (country_name,))
        for row in cursor: 
            animals.append({'animal name':row[0]})
           
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return json.dumps(animals)


@api.route('/animals/')
def get_animals():
    animals = []
    try:
        query = '''SELECT * FROM animals;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor: 
            animals.append({'animal id':row[0], 'animal name':row[1], 'animal species':row[2], 
            'animal lifespan':row[3]})
           
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return json.dumps(animals)

@api.route('/')
def hello():
    return 'Hi there curious animal lover.'

# need to add the element of retrieving the animal ID as I need it for a task
@api.route('/animals/status/<status>')
def get_status(status):
    animals = []
    try:
        # SELECT animals.animal_name FROM ...
        query = '''SELECT animals.id, animals.animal_name FROM animals, populationStatus, animals_concern
                WHERE animals.id = animals_concern.animal_id
                AND populationStatus.status ILIKE CONCAT('%%', %s, '%%')
                AND animals_concern.status_id = populationStatus.id'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (status,))
        for row in cursor: 
            animals.append({'animal id':row[0], 'animal name':row[1]})
        #     'animal name :':row[0]
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return animals

@api.route('/animals/species/<first_letter>/')
def get_species(first_letter):
    animals = []
    try:
        query  = '''SELECT animals.id, animals.animal_name, animals.animal_species 
                    FROM animals 
                    WHERE animals.animal_species ILIKE CONCAT (%s, '%%');'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (first_letter,))
        for row in cursor: 
            animals.append({'animal id':row[0], 'animal name':row[1], 'animal species':row[2]})
        #    changed the order of the list so that now it includes animal id
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return animals

@api.route('/animals/continents/<continent>')
def get_continent(continent):
    animals = []
    try:
        query  = '''SELECT animals.id, animals.animal_name 
                    FROM animals , animals_continents , continents 
                    WHERE continents.continent_name ILIKE CONCAT ('%%', %s, '%%') 
                    AND continents.id = animals_continents.continent_id 
                    AND animals.id = animals_continents.animal_id;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (continent,))
        for row in cursor: 
            animals.append({'animal id':row[0], 'animal name':row[1]})
           
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return animals

@api.route('/animals/countries/<country>')
def get_country(country):
    animals = []
    try:
        query  = '''SELECT animals.id, animals.animal_name 
                    FROM animals , animals_countries , countries 
                    WHERE countries.country_name ILIKE CONCAT (%s, '%%') 
                    AND countries.id = animals_countries.country_id 
                    AND animals.id = animals_countries.animal_id;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (country,))
        for row in cursor: 
            animals.append({'animal id':row[0], 'animal name':row[1]})
           
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return animals

@api.route('/animals/animal_countries/<animal>')
def get_animalscountry(animal):
    animals = []
    try:
        query  = '''SELECT countries.country_name, animals.animal_name 
                    FROM animals , animals_countries , countries 
                    WHERE animals.animal_name ILIKE CONCAT (%s, '%%') 
                    AND countries.id = animals_countries.country_id 
                    AND animals.id = animals_countries.animal_id;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (animal,))
        for row in cursor: 
            animals.append({'animal name: ':row[1], 'countries: ':row[0]})
           
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return animals

@api.route('/animals/animal_continents/<animal>')
def get_animalscontinent(animal):
    animals = []
    try:
        query  = '''SELECT continents.continent_name, animals.animal_name 
                    FROM animals , animals_continents , continents 
                    WHERE animals.animal_name ILIKE CONCAT (%s, '%%') 
                    AND continents.id = animals_cotinents.continent_id 
                    AND animals.id = animals_continents.animal_id;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (animal,))
        for row in cursor: 
            animals.append({'animal name: ':row[1], 'countries: ':row[0]})
           
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return animals

# need to add the element of retrieving the animal ID as I need it for a task
@api.route('/animals/trend/<trend>')
def get_trend(trend):
    animals = []
    try: 
        query = '''SELECT animals.id, animals.animal_name FROM animals, populationttrend, animals_concern
                WHERE animals.id = animals_concern.animal_id
                AND populationttrend.trend ILIKE CONCAT('%%', %s, '%%')
                AND animals_concern.trend_id = populationttrend.id;'''
        # SELECT animals.animal_name FROM ...
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (trend,))
        for row in cursor: 
            animals.append({'animal id':row[0], 'animal name':row[1]})
        #    'animal name :':row[0]
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return animals

@api.route('/animals/animal_info/<prefix>/')
def getanimal_info(prefix):
    animal_info = []
    try:
        query = '''SELECT animals.id, animals.animal_name, animals.animal_species, 
                animals.animal_lifespan,populationtTrend.trend, populationStatus.status, 
                countries.country_name, continents.continent_name
                FROM animals, animals_concern, animals_continents, animals_countries,
                countries, continents, populationStatus, populationtTrend
                WHERE animals.animal_name ILIKE CONCAT( '%%', %s, '%%')
                AND animals.id = animals_concern.animal_id
                AND populationStatus.id = animals_concern.status_id
                AND populationttrend.id = animals_concern.trend_id 
                AND animals.id = animals_countries.animal_id
                AND countries.id = animals_countries.country_id
                AND animals.id = animals_continents.animal_id
                AND continents.id = animals_continents.continent_id;'''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (prefix,))
        for row in cursor: 
            animal_info.append({'animal id': row[0],'animal name':row[1], 'animal species':row[2], 
            'animal lifespan':row[3], 'animal trend':row[4], 'animal status':row[5], 
            'animal countries':row[6], 'animal continents':row[7]})
           
    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return json.dumps(animal_info) #takes a list of dictionaries and dumps returns a string

@api.route('/help')
def get_help():
    return flask.render_template('help.html')



if __name__ == '__main__':
    parser = argparse.ArgumentParser('An animal list Flask Application/API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
