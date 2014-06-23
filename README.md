QuickFontAwesome
================

A simple example showing how to use [Font Awesome] with [Qt Quick]/QML.

It provides all the basic source code files.


## General Installation

1. Add the files at font folder inside your qml resource.

1. At this example, it is necessary to import the folder font:

        // main.qml
        import QtQuick 2.2
        import "font" as Font

1. Using Font Awesome:

        // main.qml
        Window {
          ...
          Font.FontAwesome {
            id: awesome
          }
          Text {
            ...
            font.pointSize: 180
            font.family: awesome.family()
            text: awesome.icons.fa_money
          }
        }

## Considerations

I needed to replace the "-" character, from Font Awesome icons name, to  "_", because
QML/JS doesn't accept  minus character at variables name.

You can see all availables icons at [qml/font/Variables.qml] file.

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
[qml/font/Variables.qml]: https://github.com/ricardodovalle/QuickFontAwesome/blob/master/qml/font/Variables.qml