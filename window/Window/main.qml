import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0 as Contrls2_0
import QtQuick.Controls 1.4 as Contros1_4

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    visibility: Window.AutomaticVisibility//设置窗口的显示状态
    contentOrientation: Qt.PrimaryOrientation
    modality: Qt.ApplicationModal

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }

    }


    Contrls2_0.BusyIndicator {
        anchors.centerIn: parent
//        running: image.status === Image.Loading
    }

    Contros1_4.BusyIndicator {
            x: 100
            y: 100
//          running: image.status === Image.Loading
      }

    TextEdit {
        id: textEdit
        text: qsTr("Enter some text...")
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            border.width: 1
        }
    }

    Contrls2_0.Button {
          id: fileButton
          text: "File"
          onClicked: menu.open()

          Contrls2_0.Menu {
              id: menu
              y: fileButton.height

              Contrls2_0.MenuItem {
                  text: "New..."
              }
              Contrls2_0.MenuItem {
                  text: "Open..."
              }
              Contrls2_0.MenuItem {
                  text: "Save"
              }
          }
      }

}
