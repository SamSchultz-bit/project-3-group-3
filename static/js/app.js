// grabbing JSON data url 
const url = "Our_Flask_Website?";

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
function yearChanged(year) {
    winnerAndFinalists(year)
    updateBoxWhisker(year)
    updateManZoneScatter(year)
    updateTeamScatter(year)
    updateBubbleChart(year)
};

// define function for Winners and Finalists for each year

function winnerAndFinalists(year) {
    d3.json(url).then(function (data) {
        let winnerPanel = d3.select("#winner_finalists");

        winnerPanel.html("")
        winnerPanel.append("h6").text(year);


        //addition function winnerAndFinalist code here
    });
}


//define function for BoxAndWhisker

function updateBoxWhisker(year) {
    d3.json(url).then(function (data) {
        let boxWhisker = d3.select("#box_and_whisker");

        //additional function updateBoxWhisker code here
    });
}

//define function for ManZoneScatter

function updateManZoneScatter(year) {
    d3.json(url).then(function (data) {
        let manZoneScatter = d3.select("#scatter1");

        //additional function updateManZoneScatter here
    });
}

//define function for indVsTeamScatter

function updateTeamScatter(year) {
    d3.json(url).then(function (data) {
        let teamScatter = d3.select("#scatter2");
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

        let bubTraceData = [{
            x: bubADOT,
            y: bubYAC, 
            text: ??, 
            mode: "markers", 
            marker : {
                size: bubGrade,
                color: ??, 
            }
        }]

        let layout = {
            title: "ADOT vs YAC"
        }

        Plotly.newPlot("bubble", bubTraceData, layout);

    });
}
