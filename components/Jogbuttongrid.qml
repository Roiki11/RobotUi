import QtQuick 2.15
import QtQuick.Window 2.3
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls.Styles 1.4


GridLayout {
    id: jogbuttongrid
    columns: 2
    Repeater {
        id: repeater


        model:14

        Button {
            text: modelData
            Layout.fillHeight: true
            Layout.fillWidth: true

            enabled: true

        }
    }
}




/*##^##
Designer {
    D{i:0;height:807;width:231}
}
##^##*/
