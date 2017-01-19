import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

Slider {
    id: slide
    width: parent.width
    minimumValue: 0
    maximumValue: 360
    value: 0
    enabled: true
    onValueChanged: {
        root.rotation = slide.value
        root.radius = slide.value
    }


}


    Rectangle {
        id: root
        width: parent.width / 2
        height: parent.height / 2
        color: "green"
        border.color: "black"
        border.width: 1
        radius: 3

        anchors.centerIn: parent


    Rectangle {
        id: red_rectangle
        width: 50
        height: 50
        color: "red"
        anchors.centerIn: root
    }

    MouseArea {
        anchors.fill: red_rectangle
        onClicked: {

            red_rectangle.color = "black"
            red_rectangle.rotation = 12
            red_rectangle.radius = red_rectangle.width / 2

        }
    }



}
}
