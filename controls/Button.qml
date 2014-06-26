import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1

Button {
    id: button

    property string icon

    style: ButtonStyle {
        id: buttonstyle
        property font font
        property color foregroundColor: "black"

        label: Item {
            implicitWidth: row.implicitWidth
            implicitHeight: row.implicitHeight

            RowLayout {
                id: row
                anchors.centerIn: parent

                Text {
                    color: buttonstyle.foregroundColor
                    font.pointSize: buttonstyle.font.pointSize
                    font.family: awesome.family
                    renderType: Text.NativeRendering
                    text: awesome.loaded ? icon : ""
                }
                Text {
                    color: buttonstyle.foregroundColor
                    font: buttonstyle.font
                    renderType: Text.NativeRendering
                    text: control.text
                }
            }
        }
    }
}
