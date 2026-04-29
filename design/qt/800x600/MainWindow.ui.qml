import QtQuick
import Qt5Compat.GraphicalEffects as GE

Item {
    height: 600
    width: 800
    property alias accept: accept
    property alias amount: amount
    property alias cancel: cancel
    property alias card: card
    property alias cash: cash
    property alias digit1: digit1
    property alias digit10: digit10
    property alias footer: footer
    property alias goodBye: goodBye
    property alias header: header
    property alias ic: ic
    property alias key0: key0
    property alias key1: key1
    property alias key2: key2
    property alias key3: key3
    property alias key4: key4
    property alias key5: key5
    property alias key6: key6
    property alias key7: key7
    property alias key8: key8
    property alias key9: key9
    property alias keyC: keyC
    property alias parkingSlot: parkingSlot
    property alias pay: pay
    property alias payment: payment
    property alias welcome: welcome
    Item {
        height: 602
        width: 802
        x: -1
        y: -1
        Rectangle {
            color: "#fff5f5ed"
            height: 600
            width: 800
            x: 1
            y: 1
        }
    }
    Item {
        id: footer
        anchors.fill: parent
        visible: false
        Item {
            height: 65
            width: 802
            x: -1
            y: 537
            Rectangle {
                color: "#ffe9f1ff"
                height: 62
                width: 800
                x: 1
                y: 1.99999
            }
        }
    }
    MouseArea {
        id: goodBye
        anchors.fill: parent
        visible: false
        Item {
            anchors.fill: parent
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 43
                height: 62
                horizontalAlignment: Text.AlignHCenter
                text: "ご利用ありがとうございました"
                verticalAlignment: Text.AlignVCenter
                width: 610
                x: 94
                y: 239
            }
            Item {
                height: 6
                width: 534
                x: 133
                y: 316
                Rectangle {
                    color: "#ff183e77"
                    height: 2.00003
                    width: 531
                    x: 1.00002
                    y: 1.99998
                }
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 29
                height: 84
                horizontalAlignment: Text.AlignHCenter
                text: "精算後5分で再びロック板が上がりますので\n５分以内に出庫してください"
                verticalAlignment: Text.AlignVCenter
                width: 602
                x: 100
                y: 354
            }
        }
    }
    Item {
        id: payment
        anchors.fill: parent
        visible: false
        Item {
            anchors.fill: parent
            Item {
                height: 83
                width: 491
                x: 176
                y: 99
                Rectangle {
                    color: "#ffffffff"
                    height: 80
                    width: 488
                    x: 1.13957
                    y: 1.99036
                }
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 35
                height: 51
                horizontalAlignment: Text.AlignLeft
                text: "料金は"
                verticalAlignment: Text.AlignVCenter
                width: 110
                x: 49
                y: 126
            }
            Text {
                id: amount
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 49
                height: 71
                horizontalAlignment: Text.AlignLeft
                text: "200"
                verticalAlignment: Text.AlignVCenter
                width: 96
                x: 373
                y: 103
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 27
                height: 39
                horizontalAlignment: Text.AlignLeft
                text: "円"
                verticalAlignment: Text.AlignVCenter
                width: 27
                x: 612
                y: 137
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 35
                height: 51
                horizontalAlignment: Text.AlignLeft
                text: "です"
                verticalAlignment: Text.AlignVCenter
                width: 71
                x: 682
                y: 126
            }
        }
        Text {
            color: "#ff000000"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 28
            height: 40
            horizontalAlignment: Text.AlignLeft
            text: "お支払方法をお選びください"
            verticalAlignment: Text.AlignVCenter
            width: 384
            x: 208
            y: 223
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: cash
                height: 91
                width: 315
                x: 76
                y: 293
                Rectangle {
                    height: 91
                    layer.enabled: true
                    width: 315
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#ffe98900"
                            position: 0.994385
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#3b202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: card
                height: 91
                width: 315
                x: 408
                y: 293
                Rectangle {
                    height: 91
                    layer.enabled: true
                    width: 315
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#ffe98900"
                            position: 0.994385
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#3b202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: ic
                height: 91
                width: 315
                x: 76
                y: 401
                Rectangle {
                    height: 91
                    layer.enabled: true
                    width: 315
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#ffe98900"
                            position: 0.994385
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#3b202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: pay
                height: 91
                width: 315
                x: 408
                y: 401
                Rectangle {
                    height: 91
                    layer.enabled: true
                    width: 315
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#ffe98900"
                            position: 0.994385
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#3b202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
        }
        Text {
            color: "#ff000000"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 25
            height: 36
            horizontalAlignment: Text.AlignLeft
            text: "サービス券は先に入れてください"
            verticalAlignment: Text.AlignVCenter
            width: 389
            x: 206
            y: 551
        }
    }
    Item {
        id: parkingSlot
        anchors.fill: parent
        visible: false
        Text {
            color: "#ff000000"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 35
            height: 51
            horizontalAlignment: Text.AlignHCenter
            text: "駐車位置番号を入力してください"
            verticalAlignment: Text.AlignVCenter
            width: 543
            x: 129
            y: 113
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: key1
                height: 50
                width: 88
                x: 431
                y: 204
                Item {
                    height: 50
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.00002
                        y: 1.99998
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key2
                height: 50
                width: 88
                x: 531
                y: 204
                Item {
                    height: 50
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.99999
                        y: 1.99998
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key3
                height: 50
                width: 88
                x: 633
                y: 204
                Item {
                    height: 50
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.00002
                        y: 1.99998
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key4
                height: 49
                width: 88
                x: 431
                y: 266
                Item {
                    height: 49
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.00002
                        y: 1.99999
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key5
                height: 49
                width: 88
                x: 531
                y: 266
                Item {
                    height: 49
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.99999
                        y: 1.99999
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key6
                height: 49
                width: 88
                x: 633
                y: 266
                Item {
                    height: 49
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.00002
                        y: 1.99999
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key7
                height: 48
                width: 88
                x: 431
                y: 329
                Item {
                    height: 48
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.00002
                        y: 1.00001
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key8
                height: 48
                width: 88
                x: 531
                y: 329
                Item {
                    height: 48
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.99999
                        y: 1.00001
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key9
                height: 48
                width: 88
                x: 633
                y: 329
                Item {
                    height: 48
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.00002
                        y: 1.00001
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: key0
                height: 50
                width: 88
                x: 531
                y: 390
                Item {
                    height: 50
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.99999
                        y: 1.99998
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
            MouseArea {
                id: keyC
                height: 50
                width: 88
                x: 633
                y: 390
                Item {
                    height: 50
                    layer.enabled: true
                    width: 88
                    Rectangle {
                        height: 46
                        radius: 5.99999
                        width: 85
                        x: 1.00002
                        y: 1.99998
                        gradient: Gradient {
                            GradientStop {
                                color: "#ffdadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffffff"
                                position: 1
                            }
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#52202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            Item {
                height: 232
                width: 358
                x: 43
                y: 206
                Rectangle {
                    border.color: "#ff6f6f6f"
                    border.width: 6
                    color: "#ffffffff"
                    height: 229.85
                    radius: 20
                    width: 355.989
                    x: 1.00565
                    y: 1.07501
                }
            }
            Text {
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 24
                font.weight: 500
                height: 35
                horizontalAlignment: Text.AlignHCenter
                text: "NO."
                verticalAlignment: Text.AlignVCenter
                width: 47
                x: 107
                y: 327
            }
            Item {
                height: 90
                width: 71
                x: 175
                y: 277
                Rectangle {
                    border.color: "#ff000000"
                    border.width: 1
                    color: "#ffffffff"
                    height: 87
                    width: 68
                    x: 1.5
                    y: 1.49998
                }
            }
            Text {
                id: digit10
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 46
                font.weight: 500
                height: 66
                horizontalAlignment: Text.AlignHCenter
                text: "1"
                verticalAlignment: Text.AlignVCenter
                width: 26
                x: 197
                y: 286
            }
            Item {
                height: 90
                width: 71
                x: 265
                y: 277
                Rectangle {
                    border.color: "#ff000000"
                    border.width: 1
                    color: "#ffffffff"
                    height: 87
                    width: 68
                    x: 1.50001
                    y: 1.49998
                }
            }
            Text {
                id: digit1
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 46
                font.weight: 500
                height: 66
                horizontalAlignment: Text.AlignHCenter
                text: "2"
                verticalAlignment: Text.AlignVCenter
                width: 26
                x: 288
                y: 286
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: accept
                height: 50
                width: 358
                x: 43
                y: 459
                Rectangle {
                    height: 50
                    layer.enabled: true
                    width: 358
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#ffe98900"
                            position: 0.994385
                        }
                    }
                    layer.effect: GE.DropShadow {
                        color: "#3b202020"
                        horizontalOffset: -3.01884
                        radius: 6
                        spread: 0.01
                        verticalOffset: 2.62424
                    }
                }
            }
        }
    }
    Item {
        id: header
        anchors.fill: parent
        visible: false
        Item {
            height: 156
            width: 885
            x: -57
            y: -78
            Rectangle {
                color: "#ff183e77"
                height: 154
                width: 882
                x: 1.00001
                y: 1
            }
        }
        MouseArea {
            id: cancel
            height: 50
            width: 128
            x: 31
            y: 13
            Item {
                height: 50
                layer.enabled: true
                width: 128
                Rectangle {
                    height: 46
                    radius: 5.99999
                    width: 125
                    x: 1.00002
                    y: 1.99999
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffdadada"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffffffff"
                            position: 1
                        }
                    }
                }
                layer.effect: GE.DropShadow {
                    color: "#a6202020"
                    horizontalOffset: -3.01884
                    radius: 10
                    spread: 0.01
                    verticalOffset: 2.62424
                }
            }
        }
        Item {
            height: 50
            layer.enabled: true
            width: 128
            x: 641
            y: 13
            Rectangle {
                height: 46
                radius: 5.99999
                width: 125
                x: 1.99998
                y: 1.99999
                gradient: Gradient {
                    GradientStop {
                        color: "#ffdadada"
                        position: 0
                    }
                    GradientStop {
                        color: "#ffffffff"
                        position: 1
                    }
                }
            }
            layer.effect: GE.DropShadow {
                color: "#a6202020"
                horizontalOffset: -3.01884
                radius: 10
                spread: 0.01
                verticalOffset: 2.62424
            }
        }
        Text {
            color: "#ff000000"
            font.family: "Source Han Sans"
            font.pixelSize: 17
            font.weight: 500
            height: 25
            horizontalAlignment: Text.AlignHCenter
            text: "English"
            verticalAlignment: Text.AlignVCenter
            width: 66
            x: 671
            y: 24
        }
        Text {
            color: "#ffffffff"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 30
            height: 44
            horizontalAlignment: Text.AlignHCenter
            text: "12：24"
            verticalAlignment: Text.AlignVCenter
            width: 100
            x: 500
            y: 14
        }
    }
    MouseArea {
        id: welcome
        anchors.fill: parent
        Item {
            anchors.fill: parent
            Item {
                anchors.fill: parent
                Item {
                    height: 157
                    width: 738
                    x: 31
                    y: 31
                    Rectangle {
                        color: "#ff183e77"
                        height: 154
                        width: 736
                        x: 1.00002
                        y: 1.00001
                    }
                }
                Text {
                    color: "#ffffffff"
                    font.family: "Source Han Sans"
                    font.pixelSize: 105
                    font.weight: 500
                    height: 152
                    horizontalAlignment: Text.AlignHCenter
                    text: "精算機"
                    verticalAlignment: Text.AlignVCenter
                    width: 335
                    x: 232
                    y: 27
                }
            }
            Item {
                anchors.fill: parent
                Text {
                    color: "#ff000000"
                    font.bold: true
                    font.family: "Source Han Sans"
                    font.pixelSize: 43
                    height: 62
                    horizontalAlignment: Text.AlignHCenter
                    text: "画面を指でタップしてください"
                    verticalAlignment: Text.AlignVCenter
                    width: 605
                    x: 98
                    y: 230
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 25
                    font.weight: 500
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "Tap the screen."
                    verticalAlignment: Text.AlignVCenter
                    width: 212
                    x: 294
                    y: 295
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 61
                    width: 286
                    x: 31
                    y: 376
                    Rectangle {
                        color: "#ffcbdfff"
                        height: 57.0165
                        radius: 14
                        width: 284
                        x: 1.00002
                        y: 1.99177
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 17
                    font.weight: 500
                    height: 25
                    horizontalAlignment: Text.AlignHCenter
                    text: "お支払方法"
                    verticalAlignment: Text.AlignVCenter
                    width: 91
                    x: 128
                    y: 384
                }
            }
            Item {
                height: 162
                width: 740
                x: 30
                y: 408
                Rectangle {
                    border.color: "#ffcbdfff"
                    border.width: 4
                    color: "#ffffffff"
                    height: 158.1
                    radius: 16
                    width: 736.065
                    x: 1.96764
                    y: 1.95
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 53
                    source: "images/c65caab073f1a0d0.png"
                    width: 58
                    x: 86
                    y: 465
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 14
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "現金"
                    verticalAlignment: Text.AlignVCenter
                    width: 30
                    x: 100
                    y: 425
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 12
                    font.weight: 500
                    height: 17
                    horizontalAlignment: Text.AlignHCenter
                    text: "新紙幣も使えます"
                    verticalAlignment: Text.AlignVCenter
                    width: 101
                    x: 65
                    y: 524
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    anchors.fill: parent
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 28
                        source: "images/498ce93ca6ff4e67903ef063d0f0323128da491d.png"
                        width: 43
                        x: 314
                        y: 511
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 28
                        source: "images/730f0f6b1a881c07b6539bb9b5886d8c8d625807.png"
                        width: 37
                        x: 266
                        y: 511
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 45
                        source: "images/78c7ddb491d416672ef5bb72b2851002798037cd.png"
                        width: 45
                        x: 211
                        y: 502
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 44
                        source: "images/05fb0171bc9c95570a5e46f62b87df372ecfe9d4.png"
                        width: 61
                        x: 307
                        y: 457
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 28
                        source: "images/logo_Visa_s.png"
                        width: 56
                        x: 206
                        y: 465
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 32
                        source: "images/8e29757faf8d84aef5487a00405801fc68e82f7f.png"
                        width: 45
                        x: 262
                        y: 463
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 14
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "クレジットカード"
                    verticalAlignment: Text.AlignVCenter
                    width: 110
                    x: 230
                    y: 425
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 35
                    source: "images/suica.png"
                    width: 49
                    x: 450
                    y: 452
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 39
                    source: "images/kitaca.png"
                    width: 43
                    x: 398
                    y: 450
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 37
                    source: "images/pasmo.png"
                    width: 50
                    x: 503
                    y: 451
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 26
                    source: "images/toica.png"
                    width: 50
                    x: 392
                    y: 488
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 22
                    source: "images/manaca.png"
                    width: 59
                    x: 444
                    y: 492
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 32
                    source: "images/icoca.png"
                    width: 50
                    x: 503
                    y: 489
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 29
                    source: "images/sugoca.png"
                    width: 48
                    x: 393
                    y: 518
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 20
                    source: "images/nimoca.png"
                    width: 53
                    x: 446
                    y: 523
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 22
                    source: "images/be5725fdd6cd4288.png"
                    width: 50
                    x: 503
                    y: 523
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 14
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "交通系IC"
                    verticalAlignment: Text.AlignVCenter
                    width: 61
                    x: 445
                    y: 425
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    anchors.fill: parent
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 48
                        source: "images/7c3a9aed3242d4cef15d5cece6939b528aa659c8.png"
                        width: 66
                        x: 686
                        y: 477
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 32
                        source: "images/88b22f4bc2aa84a66895e3451a3ab988af08a648.png"
                        width: 43
                        x: 636
                        y: 485
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 33
                        source: "images/eff4e4d3000699fe98a14af52a191fe59a4d7427.png"
                        width: 46
                        x: 580
                        y: 485
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 14
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "電子マネー"
                    verticalAlignment: Text.AlignVCenter
                    width: 72
                    x: 622
                    y: 425
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 115
                    width: 5
                    x: 381
                    y: 432
                    Rectangle {
                        color: "#ff183e77"
                        height: 112
                        width: 2
                        x: 1.00002
                        y: 1.00002
                    }
                }
                Item {
                    height: 115
                    width: 5
                    x: 189
                    y: 432
                    Rectangle {
                        color: "#ff183e77"
                        height: 112
                        width: 2
                        x: 1.00001
                        y: 1.00002
                    }
                }
                Item {
                    height: 115
                    width: 5
                    x: 562
                    y: 432
                    Rectangle {
                        color: "#ff183e77"
                        height: 112
                        width: 2
                        x: 1.99999
                        y: 1.00002
                    }
                }
            }
        }
    }
}
