import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 640
    height: 600

    //Image {
     //   id: logo
     //   source: "files/images/image_Qt.jpg"
   // }


    Rectangle {
        width: 40
        height: width
        radius: width /2
        anchors.centerIn: parent
        color: "blue"
        border.color: "black"
        gradient: Gradient {
                  GradientStop { position: 0.5; color: "white" }
                  GradientStop { position: 1.0; color: "black" }

                  GradientStop { position: 0.5; color: "white" }
                  GradientStop { position: 0.0; color: "black" }


              }
        Rectangle{
            width: 100
            height: 2
            color: "red"
           // anchors.right: parent.right
            x: parent.width / 2
            y: parent.height / 2

        }
    }


    Slider {
        id: slide
        width: parent.width
        minimumValue: 0
        maximumValue: 360
        value: 0
        enabled: true
        onValueChanged: {
            logo.rotation = slide.value

        }
    }



}
