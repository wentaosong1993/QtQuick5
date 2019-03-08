//import QtQuick 2.5
//import QtQuick.Window 2.2

//Window {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")

//    ListView {
//        anchors.fill: parent

//        model: _model
//        delegate: Text {
//            text: name + ": " + number
//        }

//        ListModel {
//            id: _model
//            ListElement {
//                name: "Bill Smith"
//                number: "555 3264"
//            }
//            ListElement {
//                name: "John Brown"
//                number: "555 8426"
//            }
//            ListElement {
//                name: "Sam Wise"
//                number: "555 0473"
//            }
//        }
//    }
//}

//Rectangle {
//    id: relay

//    width: 100
//    height: 200
//    signal messageReceived(String person, String notice)

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            console.log("onClicked的参数是MouseEvent:",mouse.x)
//        }
//    }

//    Component.onCompleted: {
//        relay.messageReceived.connect(sendToPost)//连接
//        relay.messageReceived.connect(sendToTelegraph)//连接
//        relay.messageReceived.connect(sendToEmail) //连接
//        relay.messageReceived("Tom", "Happy Birthday") //发射信号
//    }

//    function sendToPost(person,notice)
//    {
//        console.log("Sending to post:" + person + "," + notice)
//    }

//    function sendToTelegraph(person,notice)
//    {
//        console.log("Sending to telegraph:" + person + "," + notice)
//    }

//    function sendToEmail(person,notice)
//    {
//        console.log("Sending to email:" + person + "," + notice)
//    }
//}

/* The Output :
QML debugging is enabled. Only use this in a safe environment.
qml: Sending to post:Tom,Happy Birthday
qml: Sending to telegraph:Tom,Happy Birthday
qml: Sending to email:Tom,Happy Birthday
*/


//import QtQuick 2.0

//  Item {
//      width: 200; height: 200

//      Rectangle {
//          anchors.fill: parent
//          color: "red"
//          objectName: "myRect"
//      }
//  }

import QtQuick 2.2
import QtQuick.Controls 1.2

Rectangle {
    width: 320
    height: 240
    color: "gray"
    QtObject {
        id: attrs
        property int counter
        Component.onCompleted: {
            attrs.counter = 10
        }
    }

    Text {
        id: countShow
        anchors.centerIn: parent
        color: "blue"
        font.pixelSize: 40
    }

    Timer {
        id: countDown
        interval: 1000
        repeat: true
        triggeredOnStart: true
        onTriggered: {
            countShow.text = attrs.counter
            attrs.counter -= 1
            if(attrs.counter < 0)
            {
                countDown.stop()
                countShow.text = "Clap Now!"
            }
        }
    }



    Button {
        id: startButton
        anchors.top: countShow.bottom
        anchors.topMargin:  20
        anchors.horizontalCenter: countShow.horizontalCenter
        text: "Start"
        onClicked: {
            attrs.counter = 10
            countDown.start()
        }
    }
}
