
import argparse
import flask
import json
import csv

app = flask.Flask(__name__)

@app.route('/')
def greeting():
    return 'Welcome, Curious Animal Lover!'

@app.route('/animalname/<first_letter>')
def get_animals(first_letter):
    animal_names = []
    with open('../data/data.csv') as f:
        reader = csv.reader(f)
        for row in reader:
            if row:
                animal_names.append(row[0])
    names = []
    first_letter = first_letter.upper()
    for animal in animal_names:
        if animal[0] == first_letter:
            names.append({"animal_name":animal})
    return json.dumps(names)

@app.route('/help')
def get_help():
    return flask.render_template('help.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A sample Flask application/API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)