#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQuickItem>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QQuickView view;
     view.setSource(QUrl(QStringLiteral("qrc:/main.qml")));
     view.show();

//     QQuickItem *item = view.rootObject()->findChild<QQuickItem*>("myRect");
//     if (item)
//         item->setProperty("color", QColor(Qt::yellow));


    return app.exec();
}
