import QtQuick 2.15
import QtQuick.Window 2.3
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls.Styles 1.4
import "components"


Window {
    id: root
    width: 800
    height: 1280
    visible: true


    Frame {
        id: frame
        anchors.fill: parent

        TabBar {
            id: tabBar
            x: 0
            y: 1210
            width: parent.width
            height: 50
            position: TabBar.Footer
            contentHeight: tabBar.height

            Repeater {
                model: ["JOG", "MDI", "PROG", "SETTINGS"]

                TabButton {
                    text: modelData
                    width: Math.max(100, tabBar.width / 5)
                }
            }
        }

        StackLayout{
            width: frame.width
            anchors.fill: parent
            anchors.bottomMargin: 60
            currentIndex: tabBar.currentIndex
            Item{
                id:jogtab
                width: parent.width
                anchors.fill: parent

                ColumnLayout {
                    id: column
                    anchors.fill: parent

                    Rectangle {
                        id: rectangle
                        height: 100
                        color: "#1bd37d"
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.fillWidth: true
                        Layout.anchors.top: true
                    }

                    Rectangle {
                        id: rectangle1

                        color: "#315c48"
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        RowLayout {
                            id: row
                            anchors.fill: parent


                            Rectangle {
                                id: rectangle2

                                color: "#e37979"
                                Layout.fillHeight: true
                                Layout.fillWidth: true

                                ColumnLayout {
                                    id: columnLayout
                                    anchors.fill: parent

                                    Rectangle {
                                        id: rectangle6
                                        width: 200
                                        height: 200
                                        color: "#aa00ff"
                                        Layout.fillHeight: true
                                        Layout.fillWidth: true
                                    }

                                    Rectangle {
                                        id: rectangle5
                                        width: 200
                                        height: 200
                                        color: "#ff5500"
                                        Layout.fillHeight: true
                                        Layout.fillWidth: true
                                    }

                                }
                            }


                            Rectangle {
                                id: rectangle7
                                color: "#33266b"
                                Layout.fillHeight: true
                                Layout.fillWidth: true

                                Jogdials {
                                    id: jogdials
                                }
                            }
                            Rectangle {
                                id: rectangle3

                                color: "#f0d968"
                                border.width: 4
                                anchors.right: parent.right
                                Layout.maximumWidth: root.width / 3
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                anchors.rightMargin: 0

                                Frame {
                                    id: frame1
                                    anchors.fill: parent

                                    ColumnLayout {
                                        id: jogcolumn
                                        anchors.fill: parent
                                        spacing: 3



                                        Rectangle {
                                            id: rectangle8
                                            height: root.height /10
                                            color: "#ffffff"

                                            Layout.fillHeight: false
                                            Layout.fillWidth: true

                                            Switch {
                                                id: control
                                                text: qsTr("Switch")
                                                anchors.fill: parent

                                                background: Rectangle{
                                                    implicitHeight: 80
                                                    implicitWidth: 150
                                                    color:"black"
                                                    radius: 8
                                                }

                                                indicator: Rectangle {
                                                    id: indicator
                                                    implicitWidth: 80
                                                    implicitHeight: 60
                                                    x: control.leftPadding
                                                    y: parent.height / 2 - height / 2
                                                    radius: 13
                                                    color: control.checked ? "#17a81a" : "#ffffff"
                                                    border.color: control.checked ? "#17a81a" : "#cccccc"

                                                    Rectangle {
                                                        x: control.checked ? parent.width - width : 0
                                                        implicitWidth: 30
                                                        implicitHeight: indicator.implicitHeight
                                                        radius: 13
                                                        color: control.down ? "#cccccc" : "#ffffff"
                                                        border.color: control.checked ? (control.down ? "#17a81a" : "#21be2b") : "#999999"
                                                    }
                                                }

                                                contentItem: Text {
                                                    text: control.text
                                                    anchors.top: parent.top
                                                    font: control.font
                                                    opacity: enabled ? 1.0 : 0.3
                                                    color: control.down ? "#17a81a" : "#21be2b"
                                                    verticalAlignment: Text.AlignVCenter
                                                    leftPadding: control.indicator.width + control.spacing
                                                }
                                            }
                                        }

                                        Jogbuttongrid {
                                            id: jogbuttongrid
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true

                                            columns: 2




                                        }

                                        Rectangle {
                                            id: rectangle4
                                            width: 364
                                            height: 54
                                            color: "#2c5aff"
                                            Layout.fillHeight: false
                                            Layout.fillWidth: true
                                        }

                                    }
                                }
                            }
                        }
                    }
                }




            }
        }
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:21}D{i:20}
}
##^##*/
