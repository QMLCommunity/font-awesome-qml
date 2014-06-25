import QtQuick 2.2
import QtQuick.Controls 1.2

Text {
    property string content
    property string icon
    property int size: 13

    Text {
        text: "Source code version " + Qt.application.version
    }

    Text {
        font.pointSize: size
        font.family: awesome.family
        text: awesome.loaded ? awesome.icons.fa_money : ""
    }
}
