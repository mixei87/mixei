import QtQuick 2.15

Window {
    id: root
    width: 750
    height: 810
    minimumWidth: 500
    minimumHeight: 500
    visible: true
    title: qsTr("Color Lines")

    ButtonNewGame {
        id: buttonNewGame
    }

    LabelRecord {
        id: labelRecordGame
        text: "Record:"
        anchors.left: buttonNewGame.right
        anchors.verticalCenter: buttonNewGame.verticalCenter
        anchors.leftMargin: root.width / 10
    }
    LabelRecord {
        id: recordGame
        score: gameBoard.model.record
        anchors.left: labelRecordGame.right
        anchors.verticalCenter: buttonNewGame.verticalCenter
        anchors.leftMargin: 20
    }

    LabelRecord {
        id: labelScoreGame
        text: "Score:"
        anchors.left: labelRecordGame.right
        anchors.verticalCenter: buttonNewGame.verticalCenter
        anchors.leftMargin: root.width / 4.5
    }

    LabelRecord {
        id: scoreGame
        score: gameBoard.model.score
        anchors.left: labelScoreGame.right
        anchors.verticalCenter: buttonNewGame.verticalCenter
        anchors.leftMargin: 20
    }

    GameBoard {
        id: gameBoard
        anchors.top: buttonNewGame.bottom
        anchors.left: parent.left
        anchors.margins: 10
        width: Math.min(root.width, root.height) - 20
        height: width
    }

    Component.onCompleted: {
        x = Screen.width * 2.07 / 3
        y = Screen.height / 2 - root.height / 2
    }
}
