$(document).ready(function() {
    $('#fullpage').fullpage({
    menu: '.navbar',
    verticalCentered: true,
    resize : false,
    anchors:['firstPage', 'secondPage'],
    css3: true
  });

    $('#line_items').dataTable();
    var ctx = $("#myChart").get(0).getContext("2d");
    var myDoughnutChart = new Chart(ctx).Doughnut(chartData);
});

var chartData = [
    {
        value: 300,
        color:"#F7464A",
        highlight: "#FF5A5E",
        label: "Housing"
    },
    {
        value: 50,
        color: "#46BFBD",
        highlight: "#5AD3D1",
        label: "Transportation"
    },
    {
        value: 100,
        color: "#FDB45C",
        highlight: "#FFC870",
        label: "Bills"
    },
    {
        value: 300,
        color:"#F7464A",
        highlight: "#FF5A5E",
        label: "Entertainment"
    },
    {
        value: 50,
        color: "#46BFBD",
        highlight: "#5AD3D1",
        label: "Education"
    },
    {
        value: 100,
        color: "#FDB45C",
        highlight: "#FFC870",
        label: "Food"
    },
    {
        value: 100,
        color: "#FDB45C",
        highlight: "#FFC870",
        label: "Miscellaneous"
    }
]
