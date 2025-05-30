## The Flask app containing routes that serve HTML pages

import flask
import argparse
import api
import json

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/search') 
def search():
    return flask.render_template('searchPage.html')

@app.route('/continent/Africa/')
def africa_page(): 
    return flask.render_template('africaList.html')

@app.route('/continent/Antarctica/')
def antarctica_page(): 
    return flask.render_template('antarcticaList.html')

@app.route('/continent/Asia/')
def asia_page(): 
    return flask.render_template('asiaList.html')

@app.route('/continent/Australia/')
def australia_page(): 
    return flask.render_template('australiaList.html')

@app.route('/continent/Europe/')
def europe_page(): 
    return flask.render_template('europeList.html')

@app.route('/continent/North-America/')
def north_america_page(): 
    return flask.render_template('northAmericaList.html')

@app.route('/continent/South-America/')
def south_america_page(): 
    return flask.render_template('southAmericaList.html')

@app.route('/home') 
def h():
    return flask.render_template('mockup1.html')

@app.route('/animal/<animal_name>')
def animal_page(animal_name):
    animal_info = api.getanimal_info(animal_name) #returns a string
    animal_info = json.loads(animal_info)
    return flask.render_template('animal.html', animal_name=animal_name, animal_info=animal_info)

@app.route('/map')
def map_page():
    return flask.render_template('map-sample-world.html')
    

if __name__ == '__main__':
    parser = argparse.ArgumentParser('An animal application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
