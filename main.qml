import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1

import "qml"

Window {
    visible: true
    width: 360
    height: 360

    FontAwesome {
        id: awesome
    }

    Rectangle {
        id: base
        anchors.fill: parent
        color: "#ffffff"
    }

    ColumnLayout {

        anchors.centerIn: parent

        Text {
            id: version
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Source code version " + Qt.application.version
        }

        Text {
            id: text
            font.pointSize: 180
            font.family: awesome.family()
            text: awesome.icons.fa_money
        }
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onClicked: Qt.quit();
        onEntered: { base.color = "#1d9d74"; text.color = "#ffffff" }
        onExited:  { base.color = "#ffffff"; text.color = "#000000" }
    }
}
