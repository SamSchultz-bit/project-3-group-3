document.addEventListener('DOMContentLoaded', function () {
    const bubbleChart = document.getElementById('bubble_chart');

    // Fetch data from Flask API
    fetch('/get_bubble_data')
        .then(response => response.json())
        .then(data => {
            // Bubble chart plot trace and layout
            const trace = {
                x: data.x_bubble,
                y: data.y_bubble,
                mode: 'markers',
                type: 'bubble',
                marker: { size: data.size_bubble }
            };

            const layout = {
                title: `YAC/R vs ADOT with RECV Grade`,
                xaxis: { title: 'Avg Depth of Target' }, 
                yaxis: { title: 'Yards After Catch per Reception' }   

            };

            Plotly.newPlot('bubble_chart', [trace], layout);
        })
        .catch(error => {
            console.error('Error:', error);
        });
});
