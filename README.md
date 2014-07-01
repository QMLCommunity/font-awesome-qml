font-awesome-qml
================

font-awesome-qml provides the [Font Awesome] web fonts to Qt Quick/QML engine.

## How to use

1. Add the file `FontAwesome.qml` and `controls` folder to your project.

1. If necessary import FontAwesome types

````javascript
import "controls" as Awesome
````

1. Using Font Awesome:

````javascript
// main.qml

import "controls" as Awesome

Window {

  FontAwesome {
    id: awesome
    // resource: "qrc:///resource/fontawesome-webfont.ttf"
    resource: "http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/fonts/fontawesome-webfont.ttf"
  }

  Text {
      id: text
      font.pointSize: 180
      font.family: awesome.family
      text: awesome.loaded ? awesome.icons.fa_money : ""
  }

  Awesome.Text {
    icon: awesome.icons.fa_money
    text: "fa_money"
  }

  Awesome.Button {
    icon: awesome.icons.fa_money
    text: "fa_money"
  }
}
````

## Avaliable Properties

````javascript
// Alias to acess individual font-awesome variables (icons)
property alias icons:

// Property to chech if the Font Loader it is ready, if it is using the remote
// font-awesome CDN it is necessary to check and wait for to be true.
property alias loaded: false

// Set font-awesome Font Loader source
property alias resource

// Return font family name
readonly property string family: "FontAwesome"
````

## Considerations

I needed to replace the "-" character, from Font Awesome icons name, to  "_", because
QML/JS doesn't accept  minus character at variables name.

You can see all availables icons at [controls/Variables.qml] file.

## Versions Tested

````
Qt Version   : 5.3
Font Awesome : 4.1.0
````

## Screenshot

![screenshot](/resource/screenshot/screenshot.png?raw=true)

## Thanks

[Font Awesome] - The iconic font and CSS toolkit.

[Qt Project] - True cross-platform framework.

"[Using Fonts Awesome in QML]" by markg85.

## Credits
Created by Ricardo do Valle.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[Font Awesome]: http://fortawesome.github.io/Font-Awesome/
[Qt Quick]: http://qt-project.org/doc/qt-5/qtquick-index.html
[Qt Project]: http://qt-project.org
[Using Fonts Awesome in QML]: http://kdeblog.mageprojects.com/2012/11/20/using-fonts-awesome-in-qml/
[controls/Variables.qml]: controls/Variables.qml
