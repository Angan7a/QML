import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import QtQuick.Extras 1.4




Window {
    property real diff: 100
    property real diff_small: 5
    id: root
    visible: true
    height: 500
    width: 1200
    color: "black"
    Rectangle {
        height: 95
        width: height
        radius:height / 2
        color: "black"
        border.color: "silver"
        border.width: 2
        y: temp.y - 15
        anchors.horizontalCenter: temp.horizontalCenter
    }
    Rectangle {
        height: 95
        width: height
        radius:height / 2
        color: "black"
        border.color: "silver"
        border.width: 2
        y: feul.y - 15
        anchors.horizontalCenter: feul.horizontalCenter
    }
    Rectangle {
        height: 312
        width: height
        radius:height / 2
        color: "black"
        border.color: "silver"
        border.width: 2
        anchors.verticalCenter: speed.verticalCenter
        anchors.horizontalCenter: speed.horizontalCenter
    }
    Rectangle {
        height: 312
        width: height
        radius:height / 2
        color: "black"
        border.color: "silver"
        border.width: 2
        anchors.verticalCenter: rpm.verticalCenter
        anchors.horizontalCenter: rpm.horizontalCenter
    }

    Slider {
        id: slide
        width: parent.width
        minimumValue: 0
        maximumValue: 230
        value: 0
        enabled: true
        onValueChanged: {
            speed.value = slide.value
            rpm.value = slide.value % 40
        }
    }

    BigGauge {
        id: speed

    }

    BigGauge {
        id: rpm
        x: parent.width / 2 - width - diff
        y: parent.height / 2 - 0.5*height
        maximumValue: 60
        style: CircularGaugeStyle {
            minorTickmarkCount: 9
            tickmarkStepSize: 10
            labelStepSize: 10
            tickmark: Rectangle {
                color: styleData.value >= 50 ? "red" : "white"
                implicitWidth: 3
                antialiasing: true
                implicitHeight: 8
                radius: 1
            }
            minorTickmark:Rectangle {
                implicitWidth: 1
                antialiasing: true
                implicitHeight: 4
                radius: 1
                color: styleData.value >= 45 ? "red" : "white"
            }
        }
    }


    SmallGauge {
        id: feul

    }
    SmallGauge {
        id: temp
        x: parent.width / 2 - width - diff_small
        anchors.bottom: rpm.bottom
        minimumValue: 50
        maximumValue: 130
        style: CircularGaugeStyle {
            minimumValueAngle: -55
            maximumValueAngle: 55
            minorTickmarkCount: 3
            tickmarkStepSize: 20
            tickmarkLabel: Text {
                            //topPadding: 7
                            color: "white"
                            font.pixelSize: 10
                            text: styleData.value === 50 ? "50" : (styleData.value === 90 ? "90" : styleData.value === 130 ? "130" : "")
            }

            tickmark: Rectangle {
                implicitWidth: 2
                antialiasing: true
                implicitHeight: 5
                color: styleData.value >= 125 ? "red" : "white"
            }
            minorTickmark: Rectangle {
                implicitWidth: 1
                antialiasing: true
                implicitHeight: 3
                color: styleData.value >= 125 ? "red" : "white"
            }


        }

    }


}


