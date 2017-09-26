import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")
    color: "#f9f9f9"

    /* Basic parameters area */

    CustomLabel {
        id: basicParametersCustomLabel
        text: qsTr("Basic parameters")
        width: 250
        font.weight: Font.DemiBold
        anchors {
            top: parent.top
            left: parent.left
            margins: 10
        }
    }

    RectDivider {
        id: rectDivider1
        width: 250
        anchors {
            top: basicParametersCustomLabel.bottom
            left: parent.left
            leftMargin: 10
            topMargin: 5
        }
    }

    Rectangle {
        id: throughputDurationRectangle
        color: "#f9f9f9"
        width: 250
        height: 70
        anchors {
            top: rectDivider1.bottom
            left: parent.left
            margins: 10
        }

        GridLayout {
            columns: 3
            columnSpacing: 0
            anchors.fill: parent

            CustomLabel {
                id: throughputCustomLabel
                text: qsTr("Throughput")
                Layout.preferredWidth: 0.35 * parent.width
            }

            CustomInput {
                id: throughputCustomInput
                textValue: "1000"
            }

            CustomLabel {
                text: "[b/s]"
                Layout.preferredWidth: 0.1 * parent.width
            }

            CustomLabel {
                text: qsTr("Duration")
            }

            CustomInput {
                id: durationCustomInput
                textValue: "1000"
            }

            CustomLabel {
                text: "[s]"
            }

        }
    }

    /* Queues area */

    CustomLabel {
        id: queuesCustomLabel
        text: qsTr("Queues")
        font.weight: Font.DemiBold
        anchors {
            top: parent.top
            left: basicParametersCustomLabel.right
            margins: 10
            leftMargin: 50
        }
    }

    RectDivider {
        id: rectDivider2
        width: 340
        anchors {
            top: basicParametersCustomLabel.bottom
            left: basicParametersCustomLabel.right
            leftMargin: 50
            topMargin: 5
        }
    }

    CustomTableView {
        width: 360
        height: 400
        anchors {
            top: rectDivider2.bottom
            left: rectDivider2.left
            topMargin: 10
        }
    }
}
