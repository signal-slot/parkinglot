import QtQuick
import "ui"

Window {
    id: root
    width: ui.width
    height: ui.height
    visible: true
    title: currentPage
    property int currentPage: 0
    MainWindow {
        id: ui
        welcome.visible: root.currentPage === 0
        welcome.onClicked: root.currentPage++

        header.visible: root.currentPage > 0
        cancel.onClicked: root.currentPage = 0
        footer.visible: root.currentPage > 0

        parkingSlot.visible: root.currentPage === 1
        parkingSlot.onVisibleChanged: {
            digit1.text = ''
            digit10.text = ''
        }

        accept.onClicked: root.currentPage++
        key0.onClicked: keyClicked('0')
        key1.onClicked: keyClicked('1')
        key2.onClicked: keyClicked('2')
        key3.onClicked: keyClicked('3')
        key4.onClicked: keyClicked('4')
        key5.onClicked: keyClicked('5')
        key6.onClicked: keyClicked('6')
        key7.onClicked: keyClicked('7')
        key8.onClicked: keyClicked('8')
        key9.onClicked: keyClicked('9')
        keyC.onClicked: {
            digit1.text = ''
            digit10.text = ''
        }
        function keyClicked(key) {
            if (digit1.text === '') {
                digit1.text = key
            } else if (digit10.text === '') {
                digit10.text = digit1.text
                digit1.text = key
            }
        }

        payment.visible: root.currentPage === 2
        cash.onClicked: root.currentPage++
        card.onClicked: root.currentPage++
        ic.onClicked: root.currentPage++
        pay.onClicked: root.currentPage++

        goodBye.visible: root.currentPage === 3
        goodBye.onClicked: root.currentPage = 0

        Timer {
            repeat: false
            running: ui.goodBye.visible
            interval: 3000
            onTriggered: root.currentPage = 0
        }
    }
}
