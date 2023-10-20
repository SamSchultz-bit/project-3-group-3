# app.py
from flask import Flask, render_template, request, jsonify
import pandas as pd

app = Flask(__name__)

data = pd.read_csv('data.csv')

# Handle null values (optional)
data.fillna(0, inplace=True)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/get_data', methods=['POST'])
def get_data():
    selected_y = request.json['selected_y']
    x_data = data['grades_pass_route']
    y_data = data[selected_y]

    response_data = {'x': x_data.tolist(), 'y': y_data.tolist()}
    return jsonify(response_data)

@app.route('/get_pie_data')
def get_pie_data():
    grades_pass_route_data = data['grades_pass_route'].tolist()
    return jsonify(grades_pass_route_data)

if __name__ == '__main__':
    app.run(debug=True)
