import QtQuick 2.15
import QtQuick.Window 2.3
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.12

Item {
    id: jogdial
    property alias label: label
    property alias jointdialValue: jointdial.value
    property alias jointdialFrom: jointdial.from
    property alias jointdialTo: jointdial.to
    property alias jointdialStepSize: jointdial.stepSize
    Layout.preferredHeight: 150
    Layout.preferredWidth: 150

    Rectangle {
        id: rectangle
        anchors.fill: parent
        color: "#3b3b3b"
        border.width: 0





        Dial {
            id: jointdial
            anchors.fill: parent

            anchors.margins: 10
            value:200
            snapMode: Dial.SnapAlways
            stepSize: 1
            inputMode: Dial.Horizontal
            to: 200
            from: -20
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                id: dialvalue
                text: jointdial.value
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft
                layer.effect: dialvalue
                layer.enabled: false
                anchors.horizontalCenter: parent.horizontalCenter
                fontSizeMode: Text.FixedSize
                color: "#47cd47"

            }

            Text {
                id: label
                text: qsTr("Joint 0")
                color: "#47cd47"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
                anchors.verticalCenterOffset: parent.height /2 -10
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }



        }
        Shape {
            anchors.fill: parent
            anchors.leftMargin: 25
            anchors.topMargin: -14
            // multisample, decide based on your scene settings
            layer.enabled: true
            layer.samples: 4

            ShapePath {
                fillColor: "transparent"
                strokeColor: "#47cd47"
                strokeWidth: 20
                capStyle: ShapePath.FlatCap

                PathAngleArc {
                    centerX: 90  ; centerY:100
                    radiusX: centerX -15; radiusY: radiusX
                    startAngle: -228
                    sweepAngle: 280 * jointdial.position
                }
            }
        }
    }


        }



/*##^##
Designer {
    D{i:0;height:174;width:232}
}
##^##*/
