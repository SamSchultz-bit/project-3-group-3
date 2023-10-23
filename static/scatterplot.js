document.addEventListener('DOMContentLoaded', function () {
    const ySelector = document.getElementById('y-selector');
    const scatterPlot = document.getElementById('scatter-plot');

    ySelector.addEventListener('change', updateScatterPlot);
    
    // Function to update scatterplot when dropdown options are selected
    function updateScatterPlot() {
        const selectedY = ySelector.value;

        // Fetch data from Flask
        fetch('/get_data', {
            method: 'POST',
            body: JSON.stringify({ selected_y: selectedY }),
            headers: { 'Content-Type': 'application/json' }
        })
        // Troubleshoot errors
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            // Clear the existing plot
            while (scatterPlot.firstChild) {
                scatterPlot.removeChild(scatterPlot.firstChild);
            }

            // Scatter plot trace
            const trace = {
                x: data.x,
                y: data.y,
                mode: 'markers',
                type: 'scatter',
                marker: { size: 8 },
                name: 'Player'
            };

            // Line of best fit trace
            const bestFitTrace = {
                x: data.x,
                y: data.line_of_best_fit,
                mode: 'lines',
                type: 'scatter',
                line: { color: 'red' },
                name: 'Trend Line'
            };

            const layout = {
                xaxis: { title: 'RECV Grade' },
                yaxis: { title: selectedY }
            };

            // Add R-squared annotation
            const rSquaredAnnotation = {
                x: 30, 
                y: 5,  
                text: `R²: ${data.r_squared.toFixed(4)}`,
                showarrow: false,
                font: {
                    family: 'Arial',
                    size: 16,
                    color: 'black'
                }
            };

            layout.annotations = [rSquaredAnnotation];

            Plotly.newPlot(scatterPlot, [trace, bestFitTrace], layout);
        })
        .catch(error => {
            console.error('Error:', error);
        });
    }

    // Call function
    updateScatterPlot();
});

