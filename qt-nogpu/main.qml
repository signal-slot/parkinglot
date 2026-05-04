import QtQuick
import Design 1.0

// Logic-only entry point. The visual MainWindow component is provided by the
// Design module, located in design/qt-nogpu/<WxH>/Design/qmldir; the launcher
// (qt-nogpu/run.sh) selects the resolution by passing -I design/qt-nogpu/<WxH>
// to qml6.
Window {
    id: root
    property int currentPage: 0

    width: ui.width
    height: ui.height
    visible: true

    MainWindow {
        id: ui

        welcome.visible: root.currentPage === 0
        welcome.onClicked: root.currentPage++

        header.visible: root.currentPage > 0
        footer.visible: root.currentPage > 0
        cancel.onClicked: root.currentPage = 0

        parkingSlot.visible: root.currentPage === 1
        parkingSlot.onVisibleChanged: root.clearDigits()
        accept.onClicked: root.currentPage++

        key0.onClicked: root.keyClicked('0')
        key1.onClicked: root.keyClicked('1')
        key2.onClicked: root.keyClicked('2')
        key3.onClicked: root.keyClicked('3')
        key4.onClicked: root.keyClicked('4')
        key5.onClicked: root.keyClicked('5')
        key6.onClicked: root.keyClicked('6')
        key7.onClicked: root.keyClicked('7')
        key8.onClicked: root.keyClicked('8')
        key9.onClicked: root.keyClicked('9')
        keyC.onClicked: root.clearDigits()

        payment.visible: root.currentPage === 2
        cash.onClicked: root.currentPage++
        card.onClicked: root.currentPage++
        ic.onClicked: root.currentPage++
        pay.onClicked: root.currentPage++

        goodBye.visible: root.currentPage === 3
        goodBye.onClicked: root.currentPage = 0
    }

    function keyClicked(key) {
        if (ui.digit1.text === '') {
            ui.digit1.text = key
        } else if (ui.digit10.text === '') {
            ui.digit10.text = ui.digit1.text
            ui.digit1.text = key
        }
    }

    function clearDigits() {
        ui.digit1.text = ''
        ui.digit10.text = ''
    }

    function formatClock() {
        const d = new Date()
        const hh = String(d.getHours()).padStart(2, '0')
        const mm = String(d.getMinutes()).padStart(2, '0')
        return hh + '：' + mm
    }

    Timer {
        running: ui.goodBye.visible
        repeat: false
        interval: 3000
        onTriggered: root.currentPage = 0
    }

    Timer {
        running: true
        repeat: true
        interval: 1000
        triggeredOnStart: true
        onTriggered: ui.clock.text = root.formatClock()
    }
}
