import QtQuick
import QtQuick.Controls
import QtQuick.Effects

Item {
    height: 600
    width: 1024
    property alias accept: accept
    property alias amount: amount
    property alias cancel: cancel
    property alias card: card
    property alias cash: cash
    property alias clock: clock
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
        width: 1026.56
        x: -1.28
        y: -1
        Rectangle {
            color: "#fff5f5ed"
            height: 600
            width: 1024
            x: 1.28
            y: 1
        }
    }
    Item {
        id: footer
        anchors.fill: parent
        visible: false
        Item {
            height: 65
            width: 1026.56
            x: -1.28
            y: 537
            Rectangle {
                color: "#ffe9f1ff"
                height: 62
                width: 1024
                x: 1.28
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
                font.pixelSize: 36
                height: 62
                horizontalAlignment: Text.AlignHCenter
                text: "ご利用ありがとうございました"
                verticalAlignment: Text.AlignVCenter
                width: 780.8
                x: 120.32
                y: 239
            }
            Item {
                height: 6
                width: 683.52
                x: 170.24
                y: 316
                Rectangle {
                    color: "#ff183e77"
                    height: 2.00003
                    width: 679.68
                    x: 1.28002
                    y: 1.99998
                }
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 25
                height: 84
                horizontalAlignment: Text.AlignHCenter
                text: "精算後5分で再びロック板が上がりますので\n５分以内に出庫してください"
                verticalAlignment: Text.AlignVCenter
                width: 770.56
                x: 128
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
                width: 628.48
                x: 225.28
                y: 99
                Rectangle {
                    color: "#ffffffff"
                    height: 80
                    width: 624.64
                    x: 1.45865
                    y: 1.99036
                }
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 30
                height: 51
                horizontalAlignment: Text.AlignLeft
                text: "料金は"
                verticalAlignment: Text.AlignVCenter
                width: 140.8
                x: 62.72
                y: 126
            }
            Text {
                id: amount
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 42
                height: 71
                horizontalAlignment: Text.AlignLeft
                text: "200"
                verticalAlignment: Text.AlignVCenter
                width: 122.88
                x: 477.44
                y: 103
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 23
                height: 39
                horizontalAlignment: Text.AlignLeft
                text: "円"
                verticalAlignment: Text.AlignVCenter
                width: 34.56
                x: 783.36
                y: 137
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 30
                height: 51
                horizontalAlignment: Text.AlignLeft
                text: "です"
                verticalAlignment: Text.AlignVCenter
                width: 90.88
                x: 872.96
                y: 126
            }
        }
        Text {
            color: "#ff000000"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 24
            height: 40
            horizontalAlignment: Text.AlignLeft
            text: "お支払方法をお選びください"
            verticalAlignment: Text.AlignVCenter
            width: 491.52
            x: 266.24
            y: 223
        }
        Item {
            anchors.fill: parent
            Button {
                id: cash
                font.family: "Source Han Sans"
                font.pixelSize: 29
                height: 91
                highlighted: true
                layer.enabled: true
                text: "現金"
                width: 403.2
                x: 97.28
                y: 293
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#3b202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.229999
                    shadowVerticalOffset: 2.62424
                }
            }
        }
        Item {
            anchors.fill: parent
            Button {
                id: card
                font.family: "Source Han Sans"
                font.pixelSize: 29
                height: 91
                highlighted: true
                layer.enabled: true
                text: "クレジットカード"
                width: 403.2
                x: 522.24
                y: 293
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#3b202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.229999
                    shadowVerticalOffset: 2.62424
                }
            }
        }
        Item {
            anchors.fill: parent
            Button {
                id: ic
                font.family: "Source Han Sans"
                font.pixelSize: 29
                height: 91
                highlighted: true
                layer.enabled: true
                text: "交通系IC"
                width: 403.2
                x: 97.28
                y: 401
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#3b202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.229999
                    shadowVerticalOffset: 2.62424
                }
            }
        }
        Item {
            anchors.fill: parent
            Button {
                id: pay
                font.family: "Source Han Sans"
                font.pixelSize: 29
                height: 91
                highlighted: true
                layer.enabled: true
                text: "電子マネー"
                width: 403.2
                x: 522.24
                y: 401
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#3b202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.229999
                    shadowVerticalOffset: 2.62424
                }
            }
        }
        Text {
            color: "#ff000000"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 21
            height: 36
            horizontalAlignment: Text.AlignLeft
            text: "サービス券は先に入れてください"
            verticalAlignment: Text.AlignVCenter
            width: 497.92
            x: 263.68
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
            font.pixelSize: 30
            height: 51
            horizontalAlignment: Text.AlignHCenter
            text: "駐車位置番号を入力してください"
            verticalAlignment: Text.AlignVCenter
            width: 695.04
            x: 165.12
            y: 113
        }
        Item {
            anchors.fill: parent
            Button {
                id: key1
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 50
                highlighted: false
                layer.enabled: true
                text: "1"
                width: 112.64
                x: 551.68
                y: 204
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key2
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 50
                highlighted: false
                layer.enabled: true
                text: "2"
                width: 112.64
                x: 679.68
                y: 204
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key3
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 50
                highlighted: false
                layer.enabled: true
                text: "3"
                width: 112.64
                x: 810.24
                y: 204
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key4
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 49
                highlighted: false
                layer.enabled: true
                text: "4"
                width: 112.64
                x: 551.68
                y: 266
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key5
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 49
                highlighted: false
                layer.enabled: true
                text: "5"
                width: 112.64
                x: 679.68
                y: 266
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key6
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 49
                highlighted: false
                layer.enabled: true
                text: "6"
                width: 112.64
                x: 810.24
                y: 266
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key7
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 48
                highlighted: false
                layer.enabled: true
                text: "7"
                width: 112.64
                x: 551.68
                y: 329
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key8
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 48
                highlighted: false
                layer.enabled: true
                text: "8"
                width: 112.64
                x: 679.68
                y: 329
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key9
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 48
                highlighted: false
                layer.enabled: true
                text: "9"
                width: 112.64
                x: 810.24
                y: 329
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: key0
                font.family: "Source Han Sans"
                font.pixelSize: 14
                height: 50
                highlighted: false
                layer.enabled: true
                text: "0"
                width: 112.64
                x: 679.68
                y: 390
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
            Button {
                id: keyC
                font.family: "Source Han Sans"
                font.pixelSize: 12
                height: 50
                highlighted: false
                layer.enabled: true
                text: "クリア"
                width: 112.64
                x: 810.24
                y: 390
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#52202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.319997
                    shadowVerticalOffset: 2.62424
                }
            }
        }
        Item {
            anchors.fill: parent
            Item {
                height: 232
                width: 458.24
                x: 55.04
                y: 206
                Rectangle {
                    border.color: "#ff6f6f6f"
                    border.width: 6
                    color: "#ffffffff"
                    height: 229.85
                    radius: 20
                    width: 455.666
                    x: 1.28724
                    y: 1.07501
                }
            }
            Text {
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 20
                font.weight: 500
                height: 35
                horizontalAlignment: Text.AlignHCenter
                text: "NO."
                verticalAlignment: Text.AlignVCenter
                width: 60.16
                x: 136.96
                y: 327
            }
            Item {
                height: 90
                width: 90.88
                x: 224
                y: 277
                Rectangle {
                    border.color: "#ff000000"
                    border.width: 1
                    color: "#ffffffff"
                    height: 87
                    width: 87.04
                    x: 1.92
                    y: 1.49998
                }
            }
            Text {
                id: digit10
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 39
                font.weight: 500
                height: 66
                horizontalAlignment: Text.AlignHCenter
                text: "1"
                verticalAlignment: Text.AlignVCenter
                width: 33.28
                x: 252.16
                y: 286
            }
            Item {
                height: 90
                width: 90.88
                x: 339.2
                y: 277
                Rectangle {
                    border.color: "#ff000000"
                    border.width: 1
                    color: "#ffffffff"
                    height: 87
                    width: 87.04
                    x: 1.92001
                    y: 1.49998
                }
            }
            Text {
                id: digit1
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 39
                font.weight: 500
                height: 66
                horizontalAlignment: Text.AlignHCenter
                text: "2"
                verticalAlignment: Text.AlignVCenter
                width: 33.28
                x: 368.64
                y: 286
            }
        }
        Item {
            anchors.fill: parent
            Button {
                id: accept
                font.family: "Source Han Sans"
                font.pixelSize: 19
                height: 50
                highlighted: true
                layer.enabled: true
                text: "確定　▶"
                width: 458.24
                x: 55.04
                y: 459
                layer.effect: MultiEffect {
                    shadowBlur: 6
                    shadowColor: "#3b202020"
                    shadowEnabled: true
                    shadowHorizontalOffset: -3.01884
                    shadowOpacity: 0.229999
                    shadowVerticalOffset: 2.62424
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
            width: 1132.8
            x: -72.96
            y: -78
            Rectangle {
                color: "#ff183e77"
                height: 154
                width: 1128.96
                x: 1.28001
                y: 1
            }
        }
        Button {
            id: cancel
            font.family: "Source Han Sans"
            font.pixelSize: 14
            height: 50
            highlighted: false
            layer.enabled: true
            text: "トップに戻る"
            width: 163.84
            x: 39.68
            y: 13
            layer.effect: MultiEffect {
                shadowBlur: 10
                shadowColor: "#a6202020"
                shadowEnabled: true
                shadowHorizontalOffset: -3.01884
                shadowOpacity: 0.650004
                shadowVerticalOffset: 2.62424
            }
        }
        Button {
            font.family: "Source Han Sans"
            font.pixelSize: 14
            height: 50
            highlighted: false
            layer.enabled: true
            text: "English"
            width: 163.84
            x: 820.48
            y: 13
            layer.effect: MultiEffect {
                shadowBlur: 10
                shadowColor: "#a6202020"
                shadowEnabled: true
                shadowHorizontalOffset: -3.01884
                shadowOpacity: 0.650004
                shadowVerticalOffset: 2.62424
            }
        }
        Text {
            color: "#ff000000"
            font.family: "Source Han Sans"
            font.pixelSize: 14
            font.weight: 500
            height: 25
            horizontalAlignment: Text.AlignHCenter
            text: "English"
            verticalAlignment: Text.AlignVCenter
            width: 84.48
            x: 858.88
            y: 24
        }
        Text {
            id: clock
            color: "#ffffffff"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 25
            height: 44
            horizontalAlignment: Text.AlignHCenter
            text: "12：24"
            verticalAlignment: Text.AlignVCenter
            width: 128
            x: 640
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
                    width: 944.64
                    x: 39.68
                    y: 31
                    Rectangle {
                        color: "#ff183e77"
                        height: 154
                        width: 942.08
                        x: 1.28002
                        y: 1.00001
                    }
                }
                Text {
                    color: "#ffffffff"
                    font.family: "Source Han Sans"
                    font.pixelSize: 90
                    font.weight: 500
                    height: 152
                    horizontalAlignment: Text.AlignHCenter
                    text: "精算機"
                    verticalAlignment: Text.AlignVCenter
                    width: 428.8
                    x: 296.96
                    y: 27
                }
            }
            Item {
                anchors.fill: parent
                Text {
                    color: "#ff000000"
                    font.bold: true
                    font.family: "Source Han Sans"
                    font.pixelSize: 36
                    height: 62
                    horizontalAlignment: Text.AlignHCenter
                    text: "画面を指でタップしてください"
                    verticalAlignment: Text.AlignVCenter
                    width: 774.4
                    x: 125.44
                    y: 230
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 21
                    font.weight: 500
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "Tap the screen."
                    verticalAlignment: Text.AlignVCenter
                    width: 271.36
                    x: 376.32
                    y: 295
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 61
                    width: 366.08
                    x: 39.68
                    y: 376
                    Rectangle {
                        color: "#ffcbdfff"
                        height: 57.0165
                        radius: 14
                        width: 363.52
                        x: 1.28002
                        y: 1.99177
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 15
                    font.weight: 500
                    height: 25
                    horizontalAlignment: Text.AlignHCenter
                    text: "お支払方法"
                    verticalAlignment: Text.AlignVCenter
                    width: 116.48
                    x: 163.84
                    y: 384
                }
            }
            Item {
                height: 162
                width: 947.2
                x: 38.4
                y: 408
                Rectangle {
                    border.color: "#ffcbdfff"
                    border.width: 4
                    color: "#ffffffff"
                    height: 158.1
                    radius: 16
                    width: 942.163
                    x: 2.51857
                    y: 1.95
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 53
                    source: "images/c65caab073f1a0d0.png"
                    width: 74.24
                    x: 110.08
                    y: 465
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 12
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "現金"
                    verticalAlignment: Text.AlignVCenter
                    width: 38.4
                    x: 128
                    y: 425
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 10
                    font.weight: 500
                    height: 17
                    horizontalAlignment: Text.AlignHCenter
                    text: "新紙幣も使えます"
                    verticalAlignment: Text.AlignVCenter
                    width: 129.28
                    x: 83.2
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
                        source: "images/498ce93ca6ff4e67903ef063d0f0323128da491d_1.png"
                        width: 55.04
                        x: 401.92
                        y: 511
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 28
                        source: "images/730f0f6b1a881c07b6539bb9b5886d8c8d625807_1.png"
                        width: 47.36
                        x: 340.48
                        y: 511
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 45
                        source: "images/78c7ddb491d416672ef5bb72b2851002798037cd_1.png"
                        width: 57.6
                        x: 270.08
                        y: 502
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 44
                        source: "images/05fb0171bc9c95570a5e46f62b87df372ecfe9d4_1.png"
                        width: 78.08
                        x: 392.96
                        y: 457
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 28
                        source: "images/logo_Visa_s_1.png"
                        width: 71.68
                        x: 263.68
                        y: 465
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 32
                        source: "images/8e29757faf8d84aef5487a00405801fc68e82f7f_1.png"
                        width: 57.6
                        x: 335.36
                        y: 463
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 12
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "クレジットカード"
                    verticalAlignment: Text.AlignVCenter
                    width: 140.8
                    x: 294.4
                    y: 425
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 35
                    source: "images/suica.png"
                    width: 62.72
                    x: 576
                    y: 452
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 39
                    source: "images/kitaca.png"
                    width: 55.04
                    x: 509.44
                    y: 450
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 37
                    source: "images/pasmo.png"
                    width: 64
                    x: 643.84
                    y: 451
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 26
                    source: "images/toica.png"
                    width: 64
                    x: 501.76
                    y: 488
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 22
                    source: "images/manaca.png"
                    width: 75.52
                    x: 568.32
                    y: 492
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 32
                    source: "images/icoca.png"
                    width: 64
                    x: 643.84
                    y: 489
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 29
                    source: "images/sugoca.png"
                    width: 61.44
                    x: 503.04
                    y: 518
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 20
                    source: "images/nimoca.png"
                    width: 67.84
                    x: 570.88
                    y: 523
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 22
                    source: "images/be5725fdd6cd4288.png"
                    width: 64
                    x: 643.84
                    y: 523
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 12
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "交通系IC"
                    verticalAlignment: Text.AlignVCenter
                    width: 78.08
                    x: 569.6
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
                        source: "images/7c3a9aed3242d4cef15d5cece6939b528aa659c8_1.png"
                        width: 84.48
                        x: 878.08
                        y: 477
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 32
                        source: "images/88b22f4bc2aa84a66895e3451a3ab988af08a648_1.png"
                        width: 55.04
                        x: 814.08
                        y: 485
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 33
                        source: "images/eff4e4d3000699fe98a14af52a191fe59a4d7427_1.png"
                        width: 58.88
                        x: 742.4
                        y: 485
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 12
                    font.weight: 500
                    height: 20
                    horizontalAlignment: Text.AlignHCenter
                    text: "電子マネー"
                    verticalAlignment: Text.AlignVCenter
                    width: 92.16
                    x: 796.16
                    y: 425
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 115
                    width: 6.4
                    x: 487.68
                    y: 432
                    Rectangle {
                        color: "#ff183e77"
                        height: 112
                        width: 2.56
                        x: 1.28002
                        y: 1.00002
                    }
                }
                Item {
                    height: 115
                    width: 6.4
                    x: 241.92
                    y: 432
                    Rectangle {
                        color: "#ff183e77"
                        height: 112
                        width: 2.56
                        x: 1.28001
                        y: 1.00002
                    }
                }
                Item {
                    height: 115
                    width: 6.4
                    x: 719.36
                    y: 432
                    Rectangle {
                        color: "#ff183e77"
                        height: 112
                        width: 2.56
                        x: 2.55998
                        y: 1.00002
                    }
                }
            }
        }
    }
}
