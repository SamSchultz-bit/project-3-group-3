# Project3-Group3

This project was created by Group 3, which includes Esther B., Sha'miah L., Logan S., Sam S., and Colin V.

## College Football Statistics on Wide Receivers Project Overview

This project looks at various football statistics on college wide receivers at Division 1 schools and displays that data on a website using various visualizations and sorted by the selected year. 

## Coding
1. First various football statistics were taken from https://premium.pff.com as CSV files. Included in these statistics were RECV, TGT, Y/RR, ADOT, Team Success, and YAC. Then a SQL database was used to house the data.  

2. The first few sections of our Flask API loads in our data, fills any null values and filters our dataset to players with atleast 32 targets (the top 4 quintiles of the 2022 data). It then provides a route to the index page. The next sectionsallows the end user to select what data is charted in the scatterplot and to show the r-score for the data. Then it passes data for the barchart.

3. The following visualizations were created using Javascript, HTML, and CSS and includes a drop down menu that displays the graphs by year. 
    * A scatter plot with a drop down menu that looks at the following relationships
        * Receiving Grade vs Average Depth of Target
        * Receiving Grade vs Contested Catch Rate
        * Receiving Grade vs Drop Rate
        * Receiving Grade vs Yards Run After Catch
        * Receiving Grade vs Yards per Route Run
    * A bar chart that was created using the JavaScript Library Chart.js and compares the receiving grades of players in different ranges. 

    * A scatter plot that looks at team success grade vs receiving grade

    * A bubble chart that looks at Average Depth of Target vs Yards After Catch with the bubble size as receiving grade. 

4. Then GitHub Pages was used to display the graphs. 

## References

1. https://www.chartjs.org/


