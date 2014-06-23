font-awesome-qml
================

font-awesome-qml provides the [Font Awesome] web fonts to Qt Quick/QML engine.

## General Installation

1. Add the files FontAwesome.qml and FontAwesomeVariables.qml to your project.

1. Using Font Awesome:

        // main.qml
        Window {
          ...
          FontAwesome {
            id: awesome
          }
        Text {
            id: text
            font.pointSize: 180
            font.family: awesome.family
            text: awesome.loaded ? awesome.icons.fa_money : ""
        }

## Avaliable Properties

        property alias  icons:
                Alias to acess individual font-awesome variables (icons)

        readonly property string family: "FontAwesome"
                Return font family name

        property string source
                Set font-awesome Font Loader source, if it is empty it will
                be used the font-awesome remote provided by MaxCDN
                ("http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/fonts/fontawesome-webfont.ttf")

        property bool loaded: false
                Property to chech if the Font Loader it is ready, if it is using the remote
                font-awesome CDN it is necessary to check and wait for to be true.


## Considerations

I needed to replace the "-" character, from Font Awesome icons name, to  "_", because
QML/JS doesn't accept  minus character at variables name.

You can see all availables icons at [qml/FontAwesomeVariables.qml] file.

## Versions Tested

Qt Version: 5.3

Font Awesome: 4.1.0

## Thanks

[Font Awesome] - The iconic font and CSS toolkit

[Qt Project] - True cross-platform framework

Post - "[Using Fonts Awesome in QML]" by markg85

[Font Awesome]: http://fortawesome.github.io/Font-Awesome/
[Qt Quick]: http://qt-project.org/doc/qt-5/qtquick-index.html
[Qt Project]: http://qt-project.org
[Using Fonts Awesome in QML]: http://kdeblog.mageprojects.com/2012/11/20/using-fonts-awesome-in-qml/
[qml/font/Variables.qml]: https://github.com/ricardodovalle/font-awesome-qml/blob/master/qml/FontAwesomeVariables.qml
[MaxCDN]: http://qt-project.org