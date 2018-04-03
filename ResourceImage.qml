import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Image {
    id: image
    width: 125
    height: 125

    property bool rounded: true
    property bool adapt: true

    layer.enabled: rounded
    layer.effect: OpacityMask {
        maskSource: Item {
            width: image.width
            height: image.height
            Rectangle {
                anchors.centerIn: parent
                width: image.adapt ? image.width : Math.min(image.width, image.height)
                height: image.adapt ? image.height : width
                radius: Math.min(width, height)*0.1
            }
        }
    }
}
