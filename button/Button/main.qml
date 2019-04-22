import QtQuick 2.5
//import QtQuick.Window 2.2

//Window {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")

//}

Item
{
    width: 100
    height: width
    Text {
        text: attributes.name
        anchors.centerIn: parent
        color: "red"
        objectName: "mainText"
    }
//QtObject封装一批自定义的属性，这些属性在QtObject之外只能通过唯一标识id访问其属性
    QtObject {
        id: attributes
        property string name: "hello"
        property int size
        property variant attributes
    }
}
