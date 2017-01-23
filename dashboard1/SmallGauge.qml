import QtQuick 2.7
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4

CircularGauge {
    height: 100
    width: 100
    x: parent.width / 2 + diff_small
    anchors.bottom: speed.bottom
    maximumValue: 100
    minimumValue: 0
    style: CircularGaugeStyle {
        minimumValueAngle: -55
        maximumValueAngle: 55
        minorTickmarkCount: 3
        tickmarkStepSize: 25
        tickmarkLabel: Text {
                        topPadding: 7
                        color: "white"
                        font.pixelSize: 10
                        text: styleData.value === 0 ? "0" : (styleData.value === 50 ? "1/2" : styleData.value === 100 ? "1/1" : "")
        }

        tickmark: Rectangle {
            implicitWidth: 2
            antialiasing: true
            implicitHeight: 5
            color: styleData.value <= 10 ? "red" : "white"

        }
        minorTickmark: Rectangle {
            implicitWidth: 1
            antialiasing: true
            implicitHeight: 3
            color: styleData.value <= 10 ? "red" : "white"

        }
    }
}
