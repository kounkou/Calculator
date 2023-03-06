import QtQuick 2.15

Rectangle {
    id: rectElement;
    height: 50;
    width: rectangleWidth ? rectangleWidth : 50;
    color: buttonColor;
    radius: 25;

    property string buttonValue: buttonValue
    property string buttonColor: buttonColor
    property string textColor: textColor
    property int rectangleWidth: rectangleWidth

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            calculatorObjectProperty.value = buttonValue;
        }
    }

    states: State {
        name: "brighter";
        when: mouseArea.pressed

        PropertyChanges {
            target: rectElement
            color: "white"
        }
    }

    transitions: Transition {
        ColorAnimation { duration: 1000 }
    }

    Text {
        text: buttonValue;
        font.bold: true;
        anchors.centerIn: parent
        color: textColor
    }
}
