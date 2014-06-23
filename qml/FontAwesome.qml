import QtQuick 2.2

Item {
    property alias icons: variables

    FontLoader {
        id: fontAwesome
        source: "qrc:///resource/fontawesome-webfont.ttf"
    }

    FontAwesomeVariables {
        id: variables
    }

    function family() {
        return "FontAwesome"
    }
}
