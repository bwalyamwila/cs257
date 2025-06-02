## The Flask app containing routes that serve HTML pages

import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/index') 
def home():
    return flask.render_template('index.html')

@app.route('/')
def home_page():
    return flask.render_template('mockup1.html')

@app.route('/animal/<animal_name>')
def animal_page(animal_name):
    return flask.render_template('animal.html', animal_name=animal_name)

@app.route('/map')
def map_page():
    return flask.render_template('map-sample-world.html')
    

if __name__ == '__main__':
    parser = argparse.ArgumentParser('An animal application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
