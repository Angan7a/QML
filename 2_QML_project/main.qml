import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: root
        width: parent.width / 2
        height: parent.height / 2
        color: "green"
        border.color: "black"
        border.width: 1
        radius: 3

        anchors.centerIn: parent
    }

    Rectangle {

        width: 50
        height: 50
        color: "red"
        anchors.centerIn: root
    }

}
