import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11

Item {
    Frame {
        id: frame
        anchors.fill: parent

        Grid {
            id: grid
            anchors.fill: parent
            rows: 6
            columns: 2

            Repeater{
                model:12
                Text {
                    text:{modelData}

                }
                delegate: jogButton
            }
        }
    }

}
