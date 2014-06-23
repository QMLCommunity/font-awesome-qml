/** @brief A simple wrapper to use Font Awesome with Qt Quick and QML

    @author Ricardo do Valle
    @date June 2014
*/

#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    app.setApplicationVersion("4.1.0.0");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
