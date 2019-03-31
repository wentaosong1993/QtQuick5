//import QtQuick 2.6
import QtQuick.Window 2.2
/*
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
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
}
*/

import QtQuick 2.0
import QtQuick.Particles 2.0

Window {
    id: root
    width: 480; height: 160
    color: "#1f1f1f"
    visible: true

    ParticleSystem {
         id: particleSystem
    }

//    Emitter {
//        id: emitter
//        anchors.centerIn: parent
//        width: 160; height: 80
//        system: particleSystem
//        emitRate: 10
//        lifeSpan: 1000
//        lifeSpanVariation: 500
//        size: 16
//        endSize: 32
//    }
    Emitter {
        id: emitter
        anchors.centerIn: parent
        width: 360; height: 180
        system: particleSystem
        emitRate: 20
        lifeSpan: 1000
        lifeSpanVariation: 1000
        size: 32
        endSize: 10
        sizeVariation: 5
    }


    ImageParticle {
        source: "qrc:/2.png"
        system: particleSystem
//        color: '#FFD700'
        colorVariation: 0.2
        rotation: 0
        rotationVariation: 360
        rotationVelocity: 30
        rotationVelocityVariation: 12
        entryEffect: ImageParticle.Scale
    }

}
