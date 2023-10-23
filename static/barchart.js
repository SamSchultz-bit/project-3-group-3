
document.addEventListener('DOMContentLoaded', function () {
    const barChartCanvas = document.getElementById('bar-chart').getContext('2d');

    // Fetch 'grades_pass_route' data for the bar chart
    fetch('/get_pie_data')
        .then(response => response.json())
        .then(data => {
            // Set range for bar chart
            const filteredData = data.filter(value => value >= 40 && value <= 100);

            // Group data for barchart
            const groupedData = {};
            for (let i = 40; i <= 99; i += 10) {
                const range = `${i}-${i + 9}`;
                groupedData[range] = filteredData.filter(value => value >= i && value <= i + 9).length;
            }
            // create barchart
            new Chart(barChartCanvas, {
                type: 'bar',
                data: {
                    labels: Object.keys(groupedData),
                    datasets: [{
                        label: 'Players by RECV Grade',
                        data: Object.values(groupedData),
                        backgroundColor: 'blue', 
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        });
});
