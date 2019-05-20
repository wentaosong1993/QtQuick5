#pragma once

#include <QtWidgets/QWidget>
#include "ui_MyQml.h"

class MyQml : public QWidget
{
	Q_OBJECT

public:
	MyQml(QWidget *parent = Q_NULLPTR);

private:
	Ui::MyQmlClass ui;
};
