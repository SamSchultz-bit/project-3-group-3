// static/piechart.js
document.addEventListener('DOMContentLoaded', function () {
    const barChartCanvas = document.getElementById('bar-chart').getContext('2d');

    // Fetch 'grades_pass_route' data for the bar chart
    fetch('/get_pie_data')
        .then(response => response.json())
        .then(data => {
            // Filter data for values between 40 and 100
            const filteredData = data.filter(value => value >= 40 && value <= 100);

            // Count data within each group (e.g., 40-49, 50-59, etc.)
            const groupedData = {};
            for (let i = 40; i <= 100; i += 10) {
                const range = `${i}-${i + 9}`;
                groupedData[range] = filteredData.filter(value => value >= i && value <= i + 9).length;
            }

            new Chart(barChartCanvas, {
                type: 'bar',
                data: {
                    labels: Object.keys(groupedData),
                    datasets: [{
                        label: 'Count',
                        data: Object.values(groupedData),
                        backgroundColor: 'blue', // Bar color
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
