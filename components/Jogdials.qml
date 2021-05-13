import QtQuick 2.15
import QtQuick.Window 2.3
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls.Styles 1.4


Frame {
    id: jogdials

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        ColumnLayout {
            id: rowLayout
            anchors.fill: parent
            spacing: 5

            Joint0dial {
                id: jointdial
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Joint0dial {
                id: jointdial1
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label.text: qsTr("joint 1")
            }

            Joint0dial {
                id: jointdial2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label.text: qsTr("joint 2")
            }

            Joint0dial {
                id: jointdial3
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label.text: qsTr("joint 3")
            }

            Joint0dial {
                id: jointdial4
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label.text: qsTr("joint 4")
            }

            Joint0dial {
                id: jointdial5
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label.text: qsTr("joint 5")
            }

        }

    }
}

/*##^##
Designer {
    D{i:0;height:1091;width:256}D{i:1}
}
##^##*/
