import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "#637B80"

    StackView {
        id: historyStack
        anchors.fill: parent

        initialItem: Page {
            anchors.fill: parent

            background: Rectangle {
                id: pageBackground
                color: 'green'
            }

            header: Rectangle {
                id: header
                height: parent.height / 5
                width: parent.width
                color: 'yellow'

                Text {
                    id: headerText
                    anchors.centerIn: parent
                    text: 'Header'
                }
            }

            ColumnLayout {
                id: mainLayout
                spacing: -1
                anchors {
                    top: header.bottom
                    left: parent.left
                    right: parent.right
                    bottom: footer.top
                }

                Rectangle {
                    id: textContainer
                    Layout.minimumHeight: 10
                    Layout.minimumWidth: 10
                    height: greetingText.height
                    width: greetingText.width
                    color: 'blue'
                    Layout.topMargin: ((mainWindow.height - textContainer.height) * .3)
                    Layout.alignment: Qt.AlignCenter

                    Text {
                        id: greetingText
                        text: qsTr('Welcome to Qt6 for Android!')
                        color: '#C3C3C3'
                        font.pixelSize: 16
                        Layout.alignment: Qt.AlignCenter
                    }
                }


            }

            footer: Rectangle {
                id: footer
                height: parent.height / 5
                width: parent.width
                color: 'red'
                anchors {
                    bottom: parent.bottom
                    left: parent.left
                    right: parent.right
                }

                Text {
                    id: footerText
                    anchors.centerIn: parent
                    text: "Footer"
                }
            }
        }
    }

}
