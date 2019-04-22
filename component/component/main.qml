import QtQuick 2.0

ListView {
    width: 400; height: 400
    model: 5
    spacing: 5
    delegate: myItem.mycomponent    //will create green Rectangles

    MyItem { id: myItem }
}

