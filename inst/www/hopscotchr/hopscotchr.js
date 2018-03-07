// functions to bind Shiny with hopscotch

Shiny.addCustomMessageHandler('startTour', function(options) {
  hopscotch.startTour(options.tour, options.stepNum);
});

Shiny.addCustomMessageHandler('endTour', function(options) {
  hopscotch.endTour();
});
