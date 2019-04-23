/*
  Null类型
  null值
*/
//import QtQuick 2.5

//Rectangle {
//    id: root
//    width: 800
//    height: 480
//    x: 0
//    y: 0
//    property Component reminderComponent: null //空组件
//    property var reminderWindow: null //空对象

//    function showReminder() {
//        if(reminderComponent == null) {
//            reminderComponent = Qt.createComponent("reminder.qml")
//        }
//        if(reminderWindow == null) {
//            reminderWindow = reminderComponent.createObject(root,
//                                                            {
//                                                                "width": 300,
//                                                                "height": 200,
//                                                                "x": (width - 300) / 2,
//                                                                "y": (height - 200) / 2
//                                                            }
//                                                            );
//        }
//    }
//}

/*
  Number类型
*/
//Number.MAX_VALUE //最大值
//Number.MIN_VALUE //最小值
//NaN 非数



