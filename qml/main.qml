import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import godbod.tree.Calculator

ApplicationWindow {
    id: window
    visible: true
    width: 300
    height: 480


    // Calculator object
    Calculator {
        id: calculatorObjectProperty
    }

    GridLayout {
        id: digitLayout
        columns: 4
        anchors.centerIn: parent

        CalcButton { buttonValue: "AC"; buttonColor: "darkgray" }
        CalcButton { buttonValue: "+/-"; buttonColor: "darkgray"}
        CalcButton { buttonValue: "%"; buttonColor: "darkgray" }
        CalcButton { buttonValue: "/"; buttonColor: "orange"; textColor: "white" }
        CalcButton { buttonValue: "1"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "2"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "3"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "x"; buttonColor: "orange"; textColor: "white" }
        CalcButton { buttonValue: "4"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "5"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "6"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "-"; buttonColor: "orange"; textColor: "white" }
        CalcButton { buttonValue: "7"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "8"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "9"; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "+"; buttonColor: "orange"; textColor: "white" }
    }

    Rectangle {
        id: display
        width: digitLayout.width
        height: 100
        color: window.color
        clip: true
        anchors  {
            left: digitLayout.left
            bottom: digitLayout.top
            bottomMargin: 10
        }
        Text {
            id: value
            anchors {
                verticalCenter: parent.verticalCenter
                right: parent.right
                rightMargin: 10
            }

            text: calculatorObjectProperty.value
            color: "white"
            font.pixelSize: 60
        }
    }

    RowLayout {
        anchors {
            top: digitLayout.bottom
            topMargin: 10
            left: digitLayout.left
        }

        CalcButton { buttonValue: "0"; buttonColor: "grey"; textColor: "white" }

        CalcButton { buttonValue: "."; buttonColor: "grey"; textColor: "white" }
        CalcButton { buttonValue: "="; buttonColor: "orange"; textColor: "white"; rectangleWidth: 105 }
    }
}
