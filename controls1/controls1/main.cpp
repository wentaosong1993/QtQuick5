﻿#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;//加载单个qml文件
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
