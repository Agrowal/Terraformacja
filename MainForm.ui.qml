import QtQuick 2.6
import QtQuick.Controls 2.2

Rectangle {

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        x: 0
        y: 0
        width: 360
        height: 360

        SpinBox {
            id: spinBox
            x: 110
            y: 160
        }
    }
}
