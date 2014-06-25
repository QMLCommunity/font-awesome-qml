import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1


Text {
    property alias  text: content.text
    property string icon
    property int    size: 13

    RowLayout {
        Text {
            font.pointSize: size
            font.family: awesome.family
            text: awesome.loaded ? icon : ""
        }

        Text {
            id: content
            font.pointSize: size
        }
    }
}
