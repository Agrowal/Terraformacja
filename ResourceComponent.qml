import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0


Column {
    property alias imageSource: pic.source
    property alias spinId: spin
    property alias quantityId: quantity

    ResourceImage{
        id:pic
    }
    SpinBox {
        id:spin
        width: 125
    }
    ResourceQuantity {
        id:quantity
    }
}
