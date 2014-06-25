import QtQuick 2.2

FontLoader {
    id: loader

    property string resource: "http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/fonts/fontawesome-webfont.ttf"
    property bool   loaded: false

    source: resource

    onStatusChanged: (status === FontLoader.Ready) ?  loaded = true : loaded = false
}
