# Adobe Lightroom 9.3 SDK error Demo Plugin

> This is a demo plugin designed to help the Adobe team identify an issue in the LRC 9.3 release

Issue was identified and originally documented on the [Adobe Community Forum](https://community.adobe.com/t5/lightroom-classic/all-corrections-get-overwritten-when-calling-applydeveloppreset-with-a-plugin-preset-in-lrc-9-3/m-p/11245013), and then a bug-report was raised on the [Adobe Forum](https://feedback.photoshop.com/photoshop_family/topics/calling-applydeveloppreset-with-a-plugin-preset-in-lrc-9-3-removes-all-photo-corrections)

This demo plugin demonstrates the issue, and is to help the Adobe team debug the SDK changes.

## Steps to reproduce

1. Install the plugin from the `preseterror.lrdevplugin` folder in this repo.
2. Select an image, and apply some local brush adjustments to the image.
3. Trigger this plugin by selecting `File > Plug-in Extras > Preset Error Demo > Apply Setting`.

In LRC 9.3, you'll notice that the generated plugin preset of increasing the expose is applied, but also the Local adjustment added to the image is removed.

This behaviour is the same for all "Corrections" (Local Adjustment Brushes, Radial and Graduated Filters)

Here's a video showing the result:

Hope this helps.

System Settings:

```
Lightroom Classic version: 9.3 [ 202005281810-476e492c ]
License: Creative Cloud
Language setting: en-AU
Operating system: Mac OS 10
Version: 10.14.6 [18G4032]
Application architecture: x64
Logical processor count: 12
Processor speed: 2.6 GHz
SqLite Version: 3.30.1
Built-in memory: 16,384.0 MB
```
