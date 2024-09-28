
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: parent.width
    height: parent.height

    Column {
        anchors.centerIn: parent

        Text {
            text: "Enter your budget:"
            font.pixelSize: 20
            font.weight: Font.Bold
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField {
            id: budgetField
            placeholderText: "Enter your budget"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
        }

        Button {
            text: "Submit"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                // Logic to save budget value (budgetField.text)
                // Navigate to the next screen
                stackView.push(Qt.resolvedUrl("NextScreen.qml"))
            }
        }
    }
}
