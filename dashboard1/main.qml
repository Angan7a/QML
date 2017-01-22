import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import QtQuick.Extras 1.4


Window {
    property real diff: 100
    property real diff_small: 10
    id: yy
    visible: true
    height: 500
    width: 1200
    color: "black"



    CircularGauge {
        id: speed
        //value: 100//accelerating ? maximumValue : 0
        x: parent.width / 2 + diff
        y: parent.height / 2 - 0.5*height
        anchors.margins: 200
        maximumValue: 230
        style: CircularGaugeStyle {
            minorTickmarkCount: 5
            tickmarkStepSize: 10
            labelStepSize: 20
            tickmark: Rectangle {
                implicitWidth: 3
                antialiasing: true
                implicitHeight: 10
                radius: 1
            }

            needle: Rectangle {
                id: needle_speed
                y: outerRadius * 0.15
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 1.13
                antialiasing: true
                color: "red"
            }

        }
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

    //==================================================

    CircularGauge {
        id: rpm
        //value: 100//accelerating ? maximumValue : 0
        x: parent.width / 2 - width - diff
        y: parent.height / 2 - 0.5*height
        maximumValue: 60
        style: CircularGaugeStyle {
            minorTickmarkCount: 9
            tickmarkStepSize: 10
            labelStepSize: 10
            tickmark: Rectangle {
                implicitWidth: 3
                antialiasing: true
                implicitHeight: 10
                radius: 1
            }
            needle: Rectangle {
                id: needle_speed
                y: outerRadius * 0.15
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 1.13
                antialiasing: true
                color: "red"
            }
        }
    }

    //=======================
    //=================================
    CircularGauge {
        id: feul
        height: 100
        width: 100
        x: parent.width / 2 + diff_small
        anchors.bottom: speed.bottom
        maximumValue: 60
        style: CircularGaugeStyle {
            minorTickmarkCount: 9
            tickmarkStepSize: 10
            labelStepSize: 10
            tickmark: Rectangle {
                implicitWidth: 2
                antialiasing: true
                implicitHeight: 5
                radius: 1
            }
            needle: Rectangle {
                id: needle_speed
                y: outerRadius * 0.15
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 1.13
                antialiasing: true
                color: "red"
            }
        }

    }
    //======
    ///====
    ///======

    CircularGauge {
        id: temp
        height: 100
        width: 100
        x: parent.width / 2 - width - diff_small
        anchors.bottom: rpm.bottom
        minimumValue: 50
        maximumValue: 130
        style: CircularGaugeStyle {
            minimumValueAngle: 30
            id: temp_style
            minorTickmarkCount: 9
            tickmarkStepSize: 10

            //labelStepSize: 10
            tickmarkLabel: Text {
                color: "white"
                visible: styleData.value === 70 || styleData.value === 100
                font.pixelSize: 8
                text: styleData.value === 70 ? "70" : (styleData.value === 100 ? "H" : "")
            }
            tickmark: Rectangle {
                implicitWidth: 2
                antialiasing: true
                implicitHeight: 5
            }

            needle: Rectangle {
                id: needle_speed
                y: outerRadius * 0.15
                implicitWidth: outerRadius * 0.03
                implicitHeight: outerRadius * 1.13
                antialiasing: true
                color: "red"
            }

        }


    }

}


