import QtQuick.Controls 2.15

Label {
    id: root
    property string record
    text: record
    color: "black"
    font {
        pointSize: 18
        bold: true
    }
}
