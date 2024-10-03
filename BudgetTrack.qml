import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 450
    height: 600

    // TabBar at the top
    TabBar {
        id: bar
        width: parent.width
        height: 50 

        TabButton {
            id: budgetPageButton
            text: "Main Page"
            onClicked: stackView.replace(mainpageComponent) // Switch to the main page
        }

        TabButton {
            id: secondPageButton
            text: "Second Page"
            onClicked: stackView.replace(secondpageComponent)  // Switch to the second page
        }
    }

    // StackView to handle switching between different pages
    StackView {
        id: stackView
        width: parent.width
        height: parent.height - bar.height
        initialItem: mainpageComponent  // Set the initial page to be the main page
        anchors.top: bar.bottom

        // First page (Main Page) as a Component
        Component {
            id: mainpageComponent

            Item {
                width: parent.width
                height: parent.height 

                Column{
                    anchors.topMargin: 61

                    
                    
                    
                    TextField{
                        placeholderText: "Enter category"
                        placeholderTextColor: "green"
                        
                        }
                    
                    }

            }
          }
        }

        // Second page (Second Page) as a Component
        Component {
            id: secondpageComponent

            Item {
                width: parent.width
                height: parent.height
                Column {
                    anchors.centerIn: parent

                    Text {
                        text: "Second Page"
                        font.pixelSize: 24
                    }

                    TextField {
                        placeholderText: "Enter something else"
                        width: 200
                    }
                }
            }
        }
    }
    


