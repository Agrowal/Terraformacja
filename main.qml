import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0


Window {

    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "#dfdfdf"
    Column{
        id: column
        x:10
        y:10
        spacing: 10


        Row{
            spacing: 10
            ResourceImage{
                id: euroImage
                source: "pictures/euro.jpg"
            }
            ResourceImage{
                id: ironImage
                source: "pictures/iron.jpg"
            }
            ResourceImage{
                id: titaniumImage
                source: "pictures/titanium.jpg"
            }
        }

        Row{
            spacing: parent.spacing
            SpinBox {
                id: euroSpinBox
                width: 125
            }
            SpinBox {
                id: ironSpinBox
                width: 125
            }
            SpinBox {
                id: titaniumSpinBox
                width: 125
            }
        }

        Row{
            spacing: 10
            ResourceQuantity {
                id: euroQuantity
            }
            ResourceQuantity {
                id: ironQuantity
            }
            ResourceQuantity {
                id: titaniumQuantity
            }
        }

        Row{
            spacing: 10
            ResourceImage{
                id: grassImage
                source: "pictures/grass.jpg"
            }

            ResourceImage{
                id: electrictyImage
                source: "pictures/electricity.jpg"
            }

            ResourceImage{
                id: heatImage
                source: "pictures/heat.jpg"
            }
        }
        Row{
            spacing: parent.spacing
            SpinBox {
                id: grassSpinBox
                width: 125
            }
            SpinBox {
                id: electrictySpinBox
                width: 125
            }
            SpinBox {
                id: heatSpinBox
                width: 125
            }
        }
        Row{
            spacing: 10
            ResourceQuantity {
                id: grassQuantity
            }
            ResourceQuantity {
                id: electrictyQuantity
            }
            ResourceQuantity {
                id: heatQuantity
            }
        }


    }

    RoundButton {
        id: button
        x: 439
        y: 84
        width: 132
        height: 33
        radius: 10
        text: qsTr("Next round")
        checkable: false
        highlighted: true

        onClicked: {
            turnCounter.nextTurn();
            text1.text = turnCounter.cashIncome(5, spinBox.value);

        }

    }


}
