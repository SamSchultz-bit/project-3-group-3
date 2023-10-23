from flask import Flask, render_template, request, jsonify
import pandas as pd
import numpy as np
from scipy import stats

app = Flask(__name__)

# Adjust the file path to the new location
data = pd.read_csv('cfb-database/2022-receiving-summary.csv')

# Handle null values in data
data.fillna(0, inplace=True)

# Filter data for targets greater than 32
data = data[data['targets'] > 32]

# Index Page
@app.route('/')
def index():
    return render_template('index.html')

# Show dropdown and update scatterplot
@app.route('/get_data', methods=['POST'])
def get_data():
    selected_y = request.json['selected_y']
    x_data = data['grades_pass_route']
    y_data = data[selected_y]

    # Perform linear regression
    slope, intercept, r_value, p_value, std_err = stats.linregress(x_data, y_data)

    response_data = {
        'x': x_data.tolist(),
        'y': y_data.tolist(),
        'line_of_best_fit': [slope * x + intercept for x in x_data],
        'r_squared': r_value**2
    }
    return jsonify(response_data)

# Load data for bar chart
@app.route('/get_pie_data')
def get_pie_data():
    grades_pass_route_data = data['grades_pass_route'].tolist()
    return jsonify(grades_pass_route_data)

# Load data for the bubble chart
@app.route('/get_bubble_data')
def get_bubble_data():
    # Replace the example data with your actual bubble chart data
    x_bubble = data['avg_depth_of_target'].tolist()  
    y_bubble = data['yards_after_catch'].tolist()  
    size_bubble = data['grades_pass_route'].tolist()

    response_data = {
        'x_bubble': x_bubble,
        'y_bubble': y_bubble,
        'size_bubble': size_bubble,
    }
    return jsonify(response_data)

if __name__ == '__main__':
    app.run(debug=True)
