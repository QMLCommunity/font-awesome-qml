import QtQuick 2.2

import "types" as Awesome

Item {
    id: awesome

    property alias icons: variables
    property alias loaded: loader.loaded
    property alias resource: loader.resource

    readonly property string family: "FontAwesome"

    Awesome.Loader {
        id: loader
    }

    Awesome.Variables {
        id: variables
    }
}
