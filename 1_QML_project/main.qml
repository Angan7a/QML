import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 500
    height: 500
    title: qsTr("Hello World")

    Rectangle {
        width: 40
        height: 80
        color: "red"
        border.color: "black"
        border.width: 1
        radius: 3
    }


    Rectangle {
        width: 40
        height: 80
        x: 100
        y: 100
        color: "red"
        border.color: "black"
        border.width: 1
        radius: 3
    }




    Text    {
        id: w
        color: "green"
        x: 0
        y: 300
        text: qsTr("Click me to close window")
//        anchors.centerIn: parent
    }

    Rectangle {
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "green"
        border.color: "black"
        border.width: 1
        radius: 3
    }

    Rectangle {
        width: 20
        height: 20
        anchors.centerIn: parent
        color: "red"
        border.color: "black"
        border.width: 1
        radius: 10
    }
    MouseArea    {
        anchors.fill: w
        onClicked: {
            Qt.quit();
        }
    }
}
