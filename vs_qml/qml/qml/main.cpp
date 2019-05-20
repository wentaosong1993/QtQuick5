#include "MyQml.h"
#include <QtWidgets/QApplication>
#include <QQuickView>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);
	//MyQml w;
	//w.show();
	QQuickView *view = new QQuickView;
	view->setSource(QUrl::fromLocalFile("myqml.qml"));
	view->show();
	return a.exec();
}
