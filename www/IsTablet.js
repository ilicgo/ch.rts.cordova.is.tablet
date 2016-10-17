(function() {
    var exec = require('cordova/exec');
    (function(){
    	window.isTablet = false;
        cordova.exec(function(result){
            window.isTablet = !!result;
        }, function(){
            console.error("Error calling IsTablet plugin");
        }, 'IsTablet', 'isTabletDevice', []);
    })();
})();