import QtQuick 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4


CircularGauge {

    //value: 100//accelerating ? maximumValue : 0
    x: parent.width / 2 + diff
    y: parent.height / 2 - 0.5*height
    anchors.margins: 200
    maximumValue: 230
    style: CircularGaugeStyle {
        minorTickmarkCount: 4
        tickmarkStepSize: 10
        labelStepSize: 20
        tickmarkLabel: Text {
                    text: styleData.value
                    color: "white"
                }

        tickmark: Rectangle {
            implicitWidth: 3
            antialiasing: true
            implicitHeight: 8
            radius: 1
            color: styleData.value === 30 ? "red" : (styleData.value === 50 ? "red" : "white")
            //color: styleData.value === 40 ? "red" : "white"
        }


    }
}
