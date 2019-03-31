import QtQuick 2.5
import QtQuick.Controls 1.4

//ApplicationWindow {
//    visible: true
//    width: 640
//    height: 480
//    title: qsTr("Hello World")

//    menuBar: MenuBar {
//        Menu {
//            title: qsTr("File")
//            MenuItem {
//                text: qsTr("&Open")
//                onTriggered: console.log("Open action triggered");
//            }
//            MenuItem {
//                text: qsTr("Exit")
//                onTriggered: Qt.quit();
//            }
//        }
//    }

//    Label {
//        text: qsTr("Hello World")
//        anchors.centerIn: parent
//    }
//}

ApplicationWindow {
    id: applica
        width: 300; height: 200
        visible: true
//    Canvas {
//        // canvas size
//        width: 200; height: 200
//        anchors.centerIn: parent
//        // handler to override for drawing
//        onPaint: {
//            // get context to draw with
//            var ctx = getContext("2d")
//            // setup the stroke
//            ctx.lineWidth = 4
//            ctx.strokeStyle = "blue"
//            // setup the fill
//            ctx.fillStyle = "steelblue"
//            // begin a new path to draw
//            ctx.beginPath()
//            // top-left start point
//            ctx.moveTo(50,50)
//            // upper line
//            ctx.lineTo(150,50)
//            // right line
//            ctx.lineTo(150,150)
//            // bottom line
//            ctx.lineTo(50,150)
//            // left line through path closing
//            ctx.closePath()
//            // fill using fill style
//            ctx.fill()
//            // stroke using line width and stroke style
//            ctx.stroke()
//        }
//    }
        Canvas {
            id: canvas
//        width: 120; height: 120
        anchors.fill: parent
        onPaint: {
//        var ctx = getContext("2d")
//        ctx.fillStyle = 'green'
//        ctx.strokeStyle = "blue"
//        ctx.lineWidth = 4
//        // draw a filles rectangle
//        //object fillRect(real x, real y, real w, real h)
//        ctx.fillRect(20, 20, 80, 80)
//        // cut our an inner rectangle
//        //object clearRect(real x, real y, real w, real h)
//        ctx.clearRect(30,30, 60, 60)
//        // stroke a border from top-left to
//        // inner center of the larger rectangle

//        //object strokeRect(real x, real y, real w, real h)

//        ctx.strokeRect(20,20, 40, 40)
//            var ctx = getContext("2d")
//            var gradient = ctx.createLinearGradient(100,0,100,200)
//            gradient.addColorStop(0, "blue")
//            gradient.addColorStop(0.5, "lightsteelblue")
//            ctx.fillStyle = gradient
//            ctx.fillRect(50,50,100,100)

//            var ctx = getContext("2d")
//            // setup a dark background
//            ctx.strokeStyle = "#333"
//            ctx.fillRect(0,0,canvas.width,canvas.height);
//            ctx.shadowColor = "blue";
//            ctx.shadowOffsetX = 2;
//            ctx.shadowOffsetY = 2;
//            // next line crashes
//            // ctx.shadowBlur = 10;
//            ctx.font = 'Bold 10px sans-serif'//'Bold 80px Ubuntu';
//            ctx.fillStyle = "white";
//            ctx.fillText("Earth",30,180);
//            var ctx = getContext("2d")
//            // draw an image
//            ctx.drawImage('qrc:/background.jpg', 10, 10)
//            // store current context setup
//            ctx.save()
//            ctx.strokeStyle = 'red'
//            // create a triangle as clip region
//            ctx.beginPath()
//            ctx.moveTo(10,10)
//            ctx.lineTo(55,10)
//            ctx.lineTo(35,55)
//            ctx.closePath()
//            // translate coordinate system
//            ctx.translate(100,0)
//            ctx.clip() // create clip from triangle path
//            // draw image with clip applied
//            ctx.drawImage('qrc:/background.jpg', 10, 10)
//            // draw stroke around path
//            ctx.stroke()
//            // restore previous setup
//            ctx.restore()
//        }


//        Component.onCompleted: {
////         loadImage("./canvas/pikaqiu.png")
//              loadImage("qrc:/background.jpg")
//            //background.jpg
//        }

            var ctx = getContext("2d")
            ctx.strokeStyle = "blue"
            ctx.lineWidth = 4
            ctx.beginPath()
            //object rect(real x, real y, real w, real h)
            ctx.rect(-20, -20, 40, 40)
            ctx.translate(120,60)
            ctx.stroke()
            // draw path now rotated
            ctx.strokeStyle = "green"
            ctx.rotate(Math.PI/4)
            ctx.stroke()
        }
    }

}




