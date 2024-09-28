
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: parent.width
    height: parent.height
    
    Text {
            text: "Expense Tracker"
            font.pixelSize: 60
            font.weight: Font.Bold
            anchors.horizontalCenter: parent.horizontalCenter
            
            anchors.top: parent.top
            anchors.topMargin: 150
            
        }

    Column {
        anchors.centerIn: parent

        

        TextField {
            id: budgetField
            placeholderText: "Enter your budget"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
        }

        
    }
    Button {
            text: "Submit"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
            onClicked: {
                // Logic to save budget value (budgetField.text)
                // Navigate to the next screen
                stackView.push(Qt.resolvedUrl("BudgetScreen.qml"))
            }
        }
}
