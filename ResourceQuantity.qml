import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0


Rectangle{
    color: "#ffffff"
    height: childrenRect.height
    width: childrenRect.width
    Text {
        id: text1
        width: 125
        height: 40
        color: white
        text: qsTr("0")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}
