import QtQuick 2.2
import QtQuick.Window 2.1
//import QtQuick.Controls 1.2
import QtQuick.Controls 1.4 as Controls_1_4
import QtQuick.Controls.Styles 1.2
import QtQuick.Dialogs 1.1

Window {
    visible: true
    width: 600
    height: 480
    minimumWidth: 480
    minimumHeight: 360
    Rectangle {
        anchors.fill: parent
        color: "red"
    }

   Controls_1_4.BusyIndicator {
        id: busy
        running: false
        anchors.centerIn: parent
        z: 2
    }

    Text {
        id: stateLabel
        visible: false
        anchors.centerIn: parent
        z: 3
    }

    Image {
        id: imageViewer
        asynchronous: true
        cache: false
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        onStateChanged: {
            if(status === Image.Loading) {
                busy.running = true
                stateLabel.visible = false
            }
            else if(status === Image.Ready) {
                busy.running = false
            }
            else if(status === Image.Error) {
                busy.running = false
                stateLabel.visible = true
                stateLabel.text = "Error"
            }
        }
    }

    Controls_1_4.Button {
        id: openFile
        text: "Open"
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        style: ButtonStyle {
            background: Rectangle {
                implicitHeight: 25
                implicitWidth: 70
                color: control.hovered ? "#c0c0c0" : "#a0a0a0"
                border.width: control.pressed ? 2 : 1
                border.color: (control.hovered || control.pressed) ? "green" : "#888888"
            }
        }
        onClicked: {
            fileDialog.open()
            z: 4
        }
    }

    Text {
        id: imagePath
        anchors.left: openFile.right
        anchors.leftMargin: 8
        anchors.verticalCenter: openFile.verticalCenter
        font.pointSize: 18
    }

    FileDialog {
        id: fileDialog
        title: "Please  choose a file"
        nameFilters: ["Image Files (*.jpg *.png *.gif)"]
        onAccepted: {
            imageViewer.source = fileDialog.fileUrl
            var imageFile = new String(fileDialog.fileUrl)
            imagePath.text = imageFile.slice(8)
        }
    }
}
