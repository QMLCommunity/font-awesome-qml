import QtQuick 2.2

Item {

    property alias  icons: fontAwesomeVariables

    readonly property string family: "FontAwesome"

    property string source
    property bool   loaded: false

    function resource() {
        if (source === "")
            return "http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/fonts/fontawesome-webfont.ttf"

        return source
    }

    FontLoader {
        id: fontAwesomeLoader
        source: resource()

        onStatusChanged: {
            if (fontAwesomeLoader.status === FontLoader.Ready)
                loaded = true
        }
    }

    FontAwesomeVariables {
        id: fontAwesomeVariables
    }
}
