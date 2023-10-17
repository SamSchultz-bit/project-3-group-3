var tgtRECV = {
  x: [1, 2, 3],
  y: [4, 5, 6],
  type: 'scatter',
  mode: 'markers',
  label: 'Targets'
};

var yrrRECV = {
  x: [20, 30, 40],
  y: [50, 60, 70],
  xaxis: 'x2',
  yaxis: 'y2',
  mode: 'markers',
  type: 'scatter'
};

var adotRECV = {
  x: [1, 2, 3],
  y: [4, 5, 6],
  xaxis: 'x3',
  yaxis: 'y3',
  mode: 'markers',
  type: 'scatter'
};

var yacprRECV = {
  x: [1, 2, 3],
  y: [4, 5, 6],
  xaxis: 'x4',
  yaxis: 'y4',
  mode: 'markers',
  type: 'scatter'
};

var ctcrRECV = {
  x: [1, 2, 3],
  y: [4, 5, 6],
  xaxis: 'x5',
  yaxis: 'y5',
  mode: 'markers',
  type: 'scatter'
};

var drprRECV = {
  x: [1, 2, 3],
  y: [4, 5, 6],
  xaxis: 'x6',
  yaxis: 'y6',
  mode: 'markers',
  type: 'scatter'
};

var data = [tgtRECV, yrrRECV, adotRECV, yacprRECV, ctcrRECV, drprRECV];

var layout = {
  grid: {rows: 2, columns: 3, pattern: 'independent'},
  showlegend: true,
  title: 'Which metrics correlate to RECV Grade?'
  
};

Plotly.newPlot('myDiv', data, layout);
