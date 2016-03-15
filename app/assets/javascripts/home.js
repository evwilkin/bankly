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

		$("#myChart").click( 
      function(evt){
        var activePoints = myDoughnutChart.getSegmentsAtEvent(evt);
        var category = activePoints[0].label;
        $.get("/category/"+category, function(data){
        	$('.modal-body-item').html(data);
        	$('#modal-item').modal();
        })
      }
    );       
});

var chartData = [
    {
        value: '$',
        color:"#20CE99",
        highlight: "#FF5A5E",
        label: "Housing"
    },
    {
        value: '$',
        color: "#74FFD5",
        highlight: "#5AD3D1",
        label: "Transportation"
    },
    {
        value: '$',
        color: "#28FFBD",
        highlight: "#FFC870",
        label: "Bills"
    },
    {
        value: '$',
        color:"#3A7F6A",
        highlight: "#FF5A5E",
        label: "Entertainment"
    },
    {
        value: '$',
        color: "#20CC98",
        highlight: "#5AD3D1",
        label: "Education"
    },
    {
        value: '$',
        color: "#083628",
        highlight: "#FFC870",
        label: "Food"
    },
    {
        value: '$',
        color: "#000000",
        highlight: "#FFC870",
        label: "Miscellaneous"
    }
]
