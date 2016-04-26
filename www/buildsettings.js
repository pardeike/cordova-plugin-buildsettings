/*global cordova, module*/

module.exports = {

    get: function (key, defaultValue, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "BuildSettings", "getValue", [key, defaultValue]);
    }

};
