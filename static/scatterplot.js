
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
        // Error Handling
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json();
        })
        // Troubleshooting graph 
        .then(data => {
            console.log('Received data:', data); 

            // Clear the existing plot
            while (scatterPlot.firstChild) {
                scatterPlot.removeChild(scatterPlot.firstChild);
            }

            // scatter plot trace and layout
            const trace = {
                x: data.x,
                y: data.y,
                mode: 'markers',
                type: 'scatter',
                marker: { size: 8 }
            };

            const layout = {
                title: `Scatter Plot (${selectedY} vs. grades_pass_route)`,
                xaxis: { title: 'grades_pass_route' },
                yaxis: { title: selectedY }
            };

            Plotly.newPlot(scatterPlot, [trace], layout);
        })
        // Log errors to the console
        .catch(error => {
            console.error('Error:', error); 
        });
    }

    // Call function
    updateScatterPlot();
});
