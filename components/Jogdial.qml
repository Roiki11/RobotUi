import QtQuick 2.15
import QtQuick.Window 2.3
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls.Styles 1.4
import "components"

Frame {
    id: frame2
    ColumnLayout {
        id: rowLayout
        x: -12
        y: -12
        anchors.fill: parent
        spacing: 1

        Repeater{
            id: dialRepeater
            anchors.fill: parent

            model: ["joint 1",
                "joint 2",
                "Joint 3",
                "joint 4",
                "Joint 5",
                "joint 6"]

            Dial {
                id: jogdial
                snapMode: Dial.SnapAlways
                Layout.fillHeight: true
                Layout.fillWidth: true
                Text {
                    id: jogdiallabel
                    text: qsTr(modelData)
                }

                DialStyle{
                    handle: Rectangle{
                        implicitWidth: 20
                        implicitHeight: 20
                        color: Yellow
                    }
                }

            }
        }
    }
}
