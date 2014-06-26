import QtQuick 2.0

import "../controls" as Awesome

Item {
    width: 200
    height: 20

    Rectangle {
        id: base
        anchors.fill: parent
        color: "white"
    }

    Awesome.Text {
        id: awesomeText
        text: name
        icon: character
        font.pixelSize: 14
        spacing: 5
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onEntered: {base.color = "#21b384" ; awesomeText.color = "white"}
        onExited: {base.color = "white"    ; awesomeText.color = "black"}
    }
}
