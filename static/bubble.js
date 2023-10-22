const url = //This might be a file??;

//Fetch the JSON data and console log it
d3.json(url).then(function (data) {
    console.log(data);
    // Direct location for addition of dropdown menu items  
    // Dropdown tutorial website https://www.tutorialspoint.com/how-to-create-a-dropdown-list-using-javascript
    let dropDownOptions = d3.select("#dropdown");

    // defining names variable
    let years = data.years

    yearChanged(years[0])

});

// function to activate when a user changes dropdown menu
// add bar graph
function yearChanged(year) {
    winnerAndFinalists(year)
    updateBoxWhisker(year)
    updateTeamScatter(year)
    updateBubbleChart(year)
};

function winnerAndFinalists(year) {
    d3.json(url).then(function (data) {
        let winnerPanel = d3.select("#winner_finalists");

        winnerPanel.html("")
        winnerPanel.append("h6").text(year);


        //addition function winnerAndFinalist code here
    });
}

//define function for BubbleChart
// slice to only include the top 50 wide receiver stats? What statistic?
function updateBubbleChart(year) {
    d3.json(url).then(function (data) {
        let bubbleChart = d3.select("#bubble");

        //Grab the three arrays (top 50)
        //which ones are the x axis, yaxis, and size?
        let bubADOT =   ;
        let bubYAC =    ;
        let bubGrade =  ;
        let playerNames = 

        let bubTraceData = [{
            x: bubADOT,
            y: bubYAC, 
            text: playerNames , 
            mode: "markers", 
            marker : {
                size: bubGrade,
                color: bubGrade, 
            }
        }]

        let layout = {
            title: "ADOT vs YAC"
        }

        Plotly.newPlot("bubble", bubTraceData, layout);

    });
}
