# HeliFlight Configurator

HeliFlight Configurator is a crossplatform configuration tool for the HeliFlight flight control system.

HeliFlight Configurator is forked from Betaflight Configurator.


## Installation

### Standalone

**This is the default installation method, and at some point in the future this will become the only way available for most platforms. Please use this method whenever possible.**

Download the installer from [Releases.](https://github.com/heliflight3d/heliflight-configurator/releases)

#### Note for MacOS X users

Changes to the security model used in the latest versions of MacOS X 10.14 (Mojave) and 10.15 (Catalina) mean that the operating system will show an error message ('"Heliflight Configurator.app" is damaged and can’t be opened. You should move it to the Trash.') when trying to install the application. To work around this, run the following command in a terminal after installing: `sudo xattr -rd com.apple.quarantine /Applications/Betaflight\ Configurator.app`.


## Native app build via NW.js (windows/linux/macos) or Cordova (android)

### Development

1. Install node.js (version 10 required)
2. Install yarn: `npm install yarn -g`
3. (For Android platform only) Install Java JDK 8, Gradle and Android Studio (Android SDK at least level 19)
4. Change to project folder and run `yarn install`.
5. Run `yarn start`.

### Running tests

`yarn test`

### App build and release

The tasks are defined in `gulpfile.js` and can be run with through yarn:
```
yarn gulp <taskname> [[platform] [platform] ...]
```

List of possible values of `<task-name>`:
* **dist** copies all the JS and CSS files in the `./dist` folder [2].
* **apps** builds the apps in the `./apps` folder [1].
* **debug** builds debug version of the apps in the `./debug` folder [1][3].
* **release** zips up the apps into individual archives in the `./release` folder [1]. 

[1] Running this task on macOS or Linux requires Wine, since it's needed to set the icon for the Windows app (build for specific platform to avoid errors).
[2] For Android platform, **dist** task will generate folders and files in the `./dist_cordova` folder.
[3] For Android platform, you need to configure an emulator or to plug an Android device with USB debugging enabled

#### Build or release app for one specific platform
To build or release only for one specific platform you can append the plaform after the `task-name`.
If no platform is provided, all the platforms will be done in sequence.

* **MacOS X** use `yarn gulp <task-name> --osx64`
* **Linux** use `yarn gulp <task-name> --linux64`
* **Windows** use `yarn gulp <task-name> --win32`
* **ChromeOS** use `yarn gulp <task-name> --chromeos`
* **Android** use `yarn gulp <task-name> --android`

You can also use multiple platforms e.g. `yarn gulp <taskname> --osx64 --linux64`.

## Languages

HeliFlight Configurator has been translated into several languages. The application will try to detect and use your system language if a translation into this language is available. You can help [translating the application into your language](https://github.com/heliflight3d/heliflght/tree/master/README.md#Translators);

If you prefer to have the application in English or any other language, you can select your desired language in the first screen of the application.

## Notes

### Graphics Issues

If you experience graphics display problems or smudged/dithered fonts display issues in Betaflight Configurator, try invoking the betaflight-configurator executable file with the --disable-gpu command line switch. This will switch off hardware graphics acceleration. Likewise, setting your graphics card antialiasing option to OFF (e.g. FXAA parameter on NVidia graphics cards) might be a remedy as well.

### Linux users

In most Linux distributions your user won't have access to serial interfaces by default. To add this access right type the following command in a terminal, log out your user and log in again:

```
sudo usermod -aG dialout ${USER}
```

### Linux / MacOS X users

If you have 3D model animation problems, enable "Override software rendering list" in Chrome flags chrome://flags/#ignore-gpu-blacklist

## Support

If you need help please reach out on the [HeliFlight Discord channel](https://discord.com/channels/704441708661964940) before raising issues on github. 

### Issue trackers

For Betaflight configurator issues raise them here

https://github.com/heliflight3d/heliflight-configurator/issues

For Betaflight firmware issues raise them here

https://github.com/heliflight3d/heliflight/issues

## Technical details

The configurator is based on chrome.serial API running on Google Chrome/Chromium core.

## Developers

We accept clean and reasonable patches, submit them!

## Credits

ctn - primary author and maintainer of Baseflight Configurator from which Cleanflight Configurator project was forked.

Hydra -  author and maintainer of Cleanflight Configurator from which the Betaflight project was forked.

Betaflight devs - From which this project was forked.