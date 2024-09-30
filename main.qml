import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 600
    title: "Expense Tracker"

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: BudgetScreen { }
    }
}
