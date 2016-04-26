# Cordova BuildSettings Plugin

A plugin that gives your javascript access to build settings stored in XCode's Info.plist file

## Using
Clone the plugin

    $ git clone https://github.com/pardeike/cordova-plugin-buildsettings.git

Create a new Cordova Project

    $ cordova create buildsettings net.pardeike.buildsettings BuildSettings

Install the plugin

    $ cd buildsettings
    $ cordova plugin add ../cordova-plugin-buildsettings


Edit `www/js/index.js` and add the following code inside `onDeviceReady`

```js
	buildsettings.get({
		'somekey': 'default value'
	}, function(defaults) {
		var val = defaults['somekey'];
		console.log(val);
	});
```

Install iOS platform

    cordova platform add ios

Run the code

    cordova run

Add a key/value pair

	Go to the main Info.plist file in XCode and add a key "somekey" with value "xcode value"

Verify that when you run your project without cordova it show an alert for "default value" and when you run it from XCode it says "xcode value" instead.

## More Info

For more information on setting up Cordova see [the documentation](http://cordova.apache.org/docs/en/4.0.0/guide_cli_index.md.html#The%20Command-Line%20Interface)

For more info on plugins see the [Plugin Development Guide](http://cordova.apache.org/docs/en/4.0.0/guide_hybrid_plugins_index.md.html#Plugin%20Development%20Guide)
