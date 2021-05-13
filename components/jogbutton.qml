import QtQuick 2.15
import QtQuick.Controls.Imagine 2.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
Item {
    id: jogButton

    AbstractButton {
        id: jogbutton
        x: 0
        y: 0
        implicitWidth: 80
        implicitHeight: 80

        Rectangle {
            id: rectangle
            color: "#459342"
            radius: 10
            border.width: 3
            anchors.fill: parent
        }

        ButtonStyle{
            background: Rectangle{
                id:bg
                border.width: 2

                border.color: "black"
                radius: 3

            }


        }
       MouseArea{
           anchors.fill: parent
           onClicked { rectangle.color: "yellow" }
        }


    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:1}
}
##^##*/
