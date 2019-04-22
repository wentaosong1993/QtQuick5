#include <QGuiApplication>
//#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQuickItem>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QQuickView *view = new QQuickView;
    view->setSource(QUrl::fromLocalFile(":/main.qml"));
    view->show();

    QQuickItem *item = view->rootObject()->findChild<QQuickItem*>("mainText");
     if (item)
         item->setProperty("color", QColor(Qt::blue));


    return app.exec();
}
