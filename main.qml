
/****************************************************************************
**
** The MIT License (MIT)
**
** Copyright (c) 2014 Ricardo do Valle Flores de Oliveira
**
** $BEGIN_LICENSE:MIT$
** Permission is hereby granted, free of charge, to any person obtaining a copy
** of this software and associated documentation files (the "Software"), to deal
** in the Software without restriction, including without limitation the rights
** to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
** copies of the Software, and to permit persons to whom the Software is
** furnished to do so, subject to the following conditions:
**
** The above copyright notice and this permission notice shall be included in
** all copies or substantial portions of the Software.
**
** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
** IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
** FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
** AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
** LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
** OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
** SOFTWARE.
**
** $END_LICENSE$
**
****************************************************************************/

import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0

import "controls" as Awesome
import "view" as View

Window {
    visible: true
    width: 1024
    height: 768

    FontAwesome {
        id: awesome
        resource: "qrc:///resource/fontawesome-webfont.ttf"
        // resource: "http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/fonts/fontawesome-webfont.ttf"
    }

    Rectangle {
        id: base
        anchors.fill: parent
        color: "#ffffff"
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Source code version " + Qt.application.version
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 15
            font.family: awesome.family
            text: awesome.loaded ? awesome.icons.fa_money : ""
        }

        Awesome.Button {
            anchors.horizontalCenter: parent.horizontalCenter
            icon: awesome.icons.fa_money
            text: "fa_money"
        }


        GridView {
            Layout.fillHeight:  true
            Layout.fillWidth: true

            cellWidth: 250
            cellHeight: 25
            focus: true

            model: View.Model {}
            delegate: View.Delegate {}
        }
    }
}
