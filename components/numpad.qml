import QtQuick 2.15

Item {
    visible: true

    Rectangle {
        id: rectangle
        implicitWidth: 400
        implicitHeight: 400
        visible: true;
        color: "black"

        Grid {
            visible: true
            anchors.fill: parent
            leftPadding: 3
            topPadding: 4
            verticalItemAlignment: Grid.AlignVCenter
            horizontalItemAlignment: Grid.AlignHCenter
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            rows: 3; columns: 3; spacing: 2

            Repeater { model: 9
                Rectangle {
                    implicitWidth: parent.width /3 -4
                    implicitHeight: parent.height /3 -4
                    color: "lightgreen"


                                   Text {text: index
                                       font.pointSize: 30
                                          anchors.centerIn: parent } }
            }
        }
    }

}


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:4}D{i:2}
}
##^##*/
