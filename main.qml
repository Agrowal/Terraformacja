import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0


Window {

    function calculateResources (){
        euro.quantityId.textId.text = turnCounter.euro
        iron.quantityId.textId.text = turnCounter.iron
        titanium.quantityId.textId.text = turnCounter.titanium

        grass.quantityId.textId.text = turnCounter.grass
        electricity.quantityId.textId.text = turnCounter.electricity
        heat.quantityId.textId.text = turnCounter.heat

    }

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

            ResourceComponent {
                spacing: 10
                id: euro
                imageSource: "pictures/euro.jpg"
                spinId.onValueChanged: turnCounter.euroIncome = spinId.value
            }
            ResourceComponent {
                spacing: 10
                id: iron
                imageSource: "pictures/iron.jpg"
                spinId.onValueChanged: turnCounter.ironIncome = spinId.value
            }
            ResourceComponent {
                spacing: 10
                id: titanium
                imageSource: "pictures/titanium.jpg"
                spinId.onValueChanged: turnCounter.titaniumIncome = spinId.value
            }

        }

        Row{
            spacing: 10

            ResourceComponent {
                spacing: 10
                id: grass
                imageSource: "pictures/grass.jpg"
                spinId.onValueChanged: turnCounter.grassIncome = spinId.value
            }
            ResourceComponent {
                spacing: 10
                id: electricity
                imageSource: "pictures/electricity.jpg"
                spinId.onValueChanged: turnCounter.electricityIncome = spinId.value
            }
            ResourceComponent {
                spacing: 10
                id: heat
                imageSource: "pictures/heat.jpg"
                spinId.onValueChanged: turnCounter.heatIncome = spinId.value
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
            calculateResources();
        }

    }


}
