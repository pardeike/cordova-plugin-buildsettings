/*global cordova, module*/

module.exports = {

	get: function (defaults, successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "BuildSettings", "getValue", [defaults]);
	},

	getUserID: function (successCallback, errorCallback) {
		cordova.exec(successCallback, errorCallback, "BuildSettings", "getUserID", []);
	}

};
