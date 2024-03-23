// boundingbox:[left, top, right, bottom]
var board = JXG.JSXGraph.initBoard(divid, {
    boundingbox: [-10, 5, 10, -5],
    axis: false,
    grid: true,
    showCopyright: false,
    color: 'white'
});
var f = board.jc.snippet('{#fx#}', true, 'x', true);
//board.create('functiongraph', [f,-10,10], {strokeColor: 'green', strokeWidth: '2'});
board.create('axis', [[0.0, 1.0], [0.0, 0.0]], {strokeColor: 'gray'});
// Define the ticks with "ms" suffix
    const ticks = [];
    for (let i = -5; i <= 5; i += 1) {
      ticks.push({
        ticks: i * 1,
        ticks_label: i + " ms"
      });
    }

    // Create x-axis with custom ticks
const xAxis = board.create('axis', [[0, 0], [1, 0]], {
    strokeColor: 'gray',
      ticks: ticks,
      name: 'Time',
      label: { position: 'rt', offset: [-10, -15] }
    });
const xValues = [
-5.0, -4.9, -4.8, -4.7, -4.6, -4.5, -4.4, -4.3, -4.2, -4.1, -4.0,
-3.9, -3.8, -3.7, -3.6, -3.5, -3.4, -3.3, -3.2, -3.1, -3.0, -2.9,
-2.8, -2.7, -2.6, -2.5, -2.4, -2.3, -2.2, -2.1, -2.0, -1.9, -1.8,
-1.7, -1.6, -1.5, -1.4, -1.3, -1.2, -1.1, -1.0, -0.9, -0.8, -0.7,
-0.6, -0.5, -0.4, -0.3, -0.2, -0.1, 0.0, 0.1, 0.2, 0.3, 0.4, 0.5,
0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8,
1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1,
3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 3.9, 4.0, 4.1, 4.2, 4.3, 4.4,
4.5, 4.6, 4.7, 4.8, 4.9, 5.0
];

// Generate y values for a sine curve with Gaussian noise
const yValues = xValues.reduce((acc, x) => {
    const sineValue = 3 * Math.sin(x);
    const u1 = Math.random();
    const u2 = Math.random();
    const z = Math.sqrt(-2 * Math.log(u1)) * Math.cos(2 * Math.PI * u2);
    const noise = 0 + 0.1 * z; // Adjust the mean and stdDev for desired noise level
    const yValue = sineValue + noise;
    acc.push(yValue);
    return acc;
}, []);
 
  // var new_point = [[0.0, 0.0],[1.0, 1.0]]
  board.create('curve', [xValues, yValues], {strokeColor: 'green', strokeWidth: '2'});
