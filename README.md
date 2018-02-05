# react-native-open-settings

[![npm
version](https://badge.fury.io/js/react-native-open-settings@2x.png)](http://badge.fury.io/js/react-native-open-settings)

Open your apps settings in the Settings app :P

## Install
```
npm install react-native-open-settings
```

### iOS
Add `React Native Open Settings` to project libraries.

### Android

- Edit `build.gradle` to look like this:
```java
apply plugin: 'com.android.application'

android {
  ...
}

dependencies {
  ...
+ compile project(':react-native-open-settings')
}
```

- In `settings.gradle`, insert the following code:
```java
include ':react-native-open-settings'
project(':react-native-open-settings').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-open-settings/android')
```

- In either your `MainActivity.java` or `MainApplication.java`, you'll see an array of packages that looks like this:

```java
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
    new MainReactPackage(),
```

- In that file, add `import com.opensettings.OpenSettingsPackage` to the list of imports at the top and add `new OpenSettingsPackage()` to the array of packages

## Usage

Require the `react-native-open-settings` module.

```javascript
import OpenSettings from 'react-native-open-settings';
```

And then, where you want to open the settings, just do
```javascript
OpenSettings.openSettings()
```

Have fun!
