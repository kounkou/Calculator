#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "calculator.h"

int main(int argc, char** argv) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<Calculator>("godbod.tree.Calculator", 1, 0, "Calculator");

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    engine.load(url);

    return app.exec();
}
