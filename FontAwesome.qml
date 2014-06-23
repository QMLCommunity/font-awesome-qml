import QtQuick 2.2

Item {
    property alias icons: variables
    property string source

    function family() {
        return "FontAwesome"
    }

    function resource() {

        if (source === "")
            return "http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/fonts/fontawesome-webfont.ttf"

        return source
    }

    FontLoader {
        id: fontAwesome
        source: resource()
    }

    FontAwesomeVariables {
        id: variables
    }
}
