/********************************************************************************
** Form generated from reading UI file 'MyQml.ui'
**
** Created by: Qt User Interface Compiler version 5.7.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MYQML_H
#define UI_MYQML_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MyQmlClass
{
public:

    void setupUi(QWidget *MyQmlClass)
    {
        if (MyQmlClass->objectName().isEmpty())
            MyQmlClass->setObjectName(QStringLiteral("MyQmlClass"));
        MyQmlClass->resize(600, 400);

        retranslateUi(MyQmlClass);

        QMetaObject::connectSlotsByName(MyQmlClass);
    } // setupUi

    void retranslateUi(QWidget *MyQmlClass)
    {
        MyQmlClass->setWindowTitle(QApplication::translate("MyQmlClass", "MyQml", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class MyQmlClass: public Ui_MyQmlClass {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MYQML_H
