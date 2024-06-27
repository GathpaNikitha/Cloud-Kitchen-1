sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/nikitha/nnrg/productlocal/test/integration/FirstJourney',
		'com/nikitha/nnrg/productlocal/test/integration/pages/ProductLocalList',
		'com/nikitha/nnrg/productlocal/test/integration/pages/ProductLocalObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductLocalList, ProductLocalObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/nikitha/nnrg/productlocal') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductLocalList: ProductLocalList,
					onTheProductLocalObjectPage: ProductLocalObjectPage
                }
            },
            opaJourney.run
        );
    }
);