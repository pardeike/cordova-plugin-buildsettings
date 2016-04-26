/*global cordova, module*/

module.exports = {

    buildsettings: function (key, defaultValue, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "BuildSettings", "getValue", [key, defaultValue]);
    }

};
