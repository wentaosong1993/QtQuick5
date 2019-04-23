﻿#include <QGuiApplication>
//#include <QQuickView>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

//    QQuickView view;
//    view.setSource(QUrl("qrc:/main.qml"));
//    view.show();
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}
