TEMPLATE = app

QT += qml quick

# Mac OS Info.plist
QMAKE_INFO_PLIST = Info.plist

RC_FILE = font-awesome-qml.rc

ICON = resource/icon/font-awesome-qml.icns

SOURCES += main.cpp

RESOURCES += qml.qrc \
    font-awesome.qrc \
    main.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

OTHER_FILES += \
    font-awesome-qml.pri \
    font-awesome-qml.rc \
    Info.plist \
    CHANGELOG.md \
    README.md \
    LICENSE
