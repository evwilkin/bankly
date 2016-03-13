$(document).ready(function() {
    $('#fullpage').fullpage({
    menu: '.navbar',
    verticalCentered: true,
    resize : false,
    anchors:['firstPage', 'secondPage'],
    navigation: true,
    navigationPosition: 'right',
    // navigationTooltips:['firstPageTooltip', 'secondPageTooltip', 'thirdPageTooltip', 'fourthPageTooltip'],
    css3: true
  });

    $('#line_items').dataTable();
});