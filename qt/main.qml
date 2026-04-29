import QtQuick

// Logic-only entry point. The visual MainWindow component is loaded from
// design/qt/<WxH>/MainWindow.ui.qml, resolved at runtime from the --design
// argument passed by qt/run.sh (default: ../design/qt/1024x600).
Window {
    id: root
    property int currentPage: 0

    Loader {
        id: ui
        source: {
            const args = Qt.application.arguments
            for (let i = 1; i + 1 < args.length; i++) {
                if (args[i] === "--design") {
                    return "file://" + args[i + 1] + "/MainWindow.ui.qml"
                }
            }
            return "../design/qt/1024x600/MainWindow.ui.qml"
        }

        onLoaded: {
            const m = item

            m.welcome.visible = Qt.binding(() => root.currentPage === 0)
            m.welcome.clicked.connect(() => root.currentPage++)

            m.header.visible = Qt.binding(() => root.currentPage > 0)
            m.cancel.clicked.connect(() => { root.currentPage = 0 })
            m.footer.visible = Qt.binding(() => root.currentPage > 0)

            m.parkingSlot.visible = Qt.binding(() => root.currentPage === 1)
            m.parkingSlot.visibleChanged.connect(() => {
                m.digit1.text = ''
                m.digit10.text = ''
            })
            m.accept.clicked.connect(() => root.currentPage++)

            const keys = [m.key0, m.key1, m.key2, m.key3, m.key4,
                          m.key5, m.key6, m.key7, m.key8, m.key9]
            for (let i = 0; i < 10; i++) {
                const k = String(i)
                keys[i].clicked.connect(() => root.keyClicked(k))
            }
            m.keyC.clicked.connect(() => {
                m.digit1.text = ''
                m.digit10.text = ''
            })

            m.payment.visible = Qt.binding(() => root.currentPage === 2)
            m.cash.clicked.connect(() => root.currentPage++)
            m.card.clicked.connect(() => root.currentPage++)
            m.ic.clicked.connect(() => root.currentPage++)
            m.pay.clicked.connect(() => root.currentPage++)

            m.goodBye.visible = Qt.binding(() => root.currentPage === 3)
            m.goodBye.clicked.connect(() => { root.currentPage = 0 })
        }
    }

    width: ui.item ? ui.item.width : 1
    height: ui.item ? ui.item.height : 1
    visible: ui.status === Loader.Ready
    title: root.currentPage

    function keyClicked(key) {
        const m = ui.item
        if (m.digit1.text === '') {
            m.digit1.text = key
        } else if (m.digit10.text === '') {
            m.digit10.text = m.digit1.text
            m.digit1.text = key
        }
    }

    Timer {
        repeat: false
        running: ui.item !== null && ui.item.goodBye.visible
        interval: 3000
        onTriggered: root.currentPage = 0
    }
}
