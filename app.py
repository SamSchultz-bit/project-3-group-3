from flask import Flask, render_template, request, jsonify
import pandas as pd

app = Flask(__name__)
# needs to be updated to database
data = pd.read_csv('data.csv')

# Fill all NaN values with zeros in the entire DataFrame
data.fillna(0, inplace=True)

#
@app.route('/')
def index():
    return render_template('index.html')

#handle dropdown updating the scatterplot
@app.route('/get_data', methods=['POST'])
def get_data():
    selected_y = request.json['selected_y']
    x_data = data['grades_pass_route']
    y_data = data[selected_y]

    response_data = {'x': x_data.tolist(), 'y': y_data.tolist()}
    return jsonify(response_data)

if __name__ == '__main__':
    app.run(debug=True)
