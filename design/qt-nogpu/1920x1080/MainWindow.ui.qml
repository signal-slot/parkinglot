import QtQuick

Item {
    height: 1080
    width: 1920
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
        height: 1083.6
        width: 1924.8
        x: -2.4
        y: -1.8
        Rectangle {
            color: "#fff5f5ed"
            height: 1080
            width: 1920
            x: 2.4
            y: 1.8
        }
    }
    Item {
        id: footer
        anchors.fill: parent
        visible: false
        Item {
            height: 117
            width: 1924.8
            x: -2.4
            y: 966.6
            Rectangle {
                color: "#ffe9f1ff"
                height: 111.6
                width: 1920
                x: 2.4
                y: 3.59998
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
                font.pixelSize: 77
                height: 111.6
                horizontalAlignment: Text.AlignHCenter
                text: "ご利用ありがとうございました"
                verticalAlignment: Text.AlignVCenter
                width: 1464
                x: 225.6
                y: 430.2
            }
            Item {
                height: 10.8
                width: 1281.6
                x: 319.2
                y: 568.8
                Rectangle {
                    color: "#ff183e77"
                    height: 3.60006
                    width: 1274.4
                    x: 2.40004
                    y: 3.59997
                }
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 53
                height: 151.2
                horizontalAlignment: Text.AlignHCenter
                text: "精算後5分で再びロック板が上がりますので\n５分以内に出庫してください"
                verticalAlignment: Text.AlignVCenter
                width: 1444.8
                x: 240
                y: 637.2
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
                height: 149.4
                width: 1178.4
                x: 422.4
                y: 178.2
                Rectangle {
                    color: "#ffffffff"
                    height: 144
                    width: 1171.2
                    x: 2.73496
                    y: 3.58264
                }
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 63
                height: 91.8
                horizontalAlignment: Text.AlignLeft
                text: "料金は"
                verticalAlignment: Text.AlignVCenter
                width: 264
                x: 117.6
                y: 226.8
            }
            Text {
                id: amount
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 89
                height: 127.8
                horizontalAlignment: Text.AlignLeft
                text: "200"
                verticalAlignment: Text.AlignVCenter
                width: 230.4
                x: 895.2
                y: 185.4
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 49
                height: 70.2
                horizontalAlignment: Text.AlignLeft
                text: "円"
                verticalAlignment: Text.AlignVCenter
                width: 64.8
                x: 1468.8
                y: 246.6
            }
            Text {
                color: "#ff000000"
                font.bold: true
                font.family: "Source Han Sans"
                font.pixelSize: 63
                height: 91.8
                horizontalAlignment: Text.AlignLeft
                text: "です"
                verticalAlignment: Text.AlignVCenter
                width: 170.4
                x: 1636.8
                y: 226.8
            }
        }
        Text {
            color: "#ff000000"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 50
            height: 72
            horizontalAlignment: Text.AlignLeft
            text: "お支払方法をお選びください"
            verticalAlignment: Text.AlignVCenter
            width: 921.6
            x: 499.2
            y: 401.4
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: cash
                height: 163.8
                width: 756
                x: 182.4
                y: 527.4
                Rectangle {
                    height: 163.8
                    width: 756
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
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: card
                height: 163.8
                width: 756
                x: 979.2
                y: 527.4
                Rectangle {
                    height: 163.8
                    width: 756
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
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: ic
                height: 163.8
                width: 756
                x: 182.4
                y: 721.8
                Rectangle {
                    height: 163.8
                    width: 756
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
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: pay
                height: 163.8
                width: 756
                x: 979.2
                y: 721.8
                Rectangle {
                    height: 163.8
                    width: 756
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
                }
            }
        }
        Text {
            color: "#ff000000"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 45
            height: 64.8
            horizontalAlignment: Text.AlignLeft
            text: "サービス券は先に入れてください"
            verticalAlignment: Text.AlignVCenter
            width: 933.6
            x: 494.4
            y: 991.8
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
            font.pixelSize: 63
            height: 91.8
            horizontalAlignment: Text.AlignHCenter
            text: "駐車位置番号を入力してください"
            verticalAlignment: Text.AlignVCenter
            width: 1303.2
            x: 309.6
            y: 203.4
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: key1
                height: 90
                width: 211.2
                x: 1034.4
                y: 367.2
                Item {
                    height: 90
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 2.40004
                        y: 3.59997
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
                }
            }
            MouseArea {
                id: key2
                height: 90
                width: 211.2
                x: 1274.4
                y: 367.2
                Item {
                    height: 90
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 4.79998
                        y: 3.59997
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
                }
            }
            MouseArea {
                id: key3
                height: 90
                width: 211.2
                x: 1519.2
                y: 367.2
                Item {
                    height: 90
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 2.40004
                        y: 3.59997
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
                }
            }
            MouseArea {
                id: key4
                height: 88.2
                width: 211.2
                x: 1034.4
                y: 478.8
                Item {
                    height: 88.2
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 2.40004
                        y: 3.59999
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
                }
            }
            MouseArea {
                id: key5
                height: 88.2
                width: 211.2
                x: 1274.4
                y: 478.8
                Item {
                    height: 88.2
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 4.79998
                        y: 3.59999
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
                }
            }
            MouseArea {
                id: key6
                height: 88.2
                width: 211.2
                x: 1519.2
                y: 478.8
                Item {
                    height: 88.2
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 2.40004
                        y: 3.59999
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
                }
            }
            MouseArea {
                id: key7
                height: 86.4
                width: 211.2
                x: 1034.4
                y: 592.2
                Item {
                    height: 86.4
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 2.40004
                        y: 1.80001
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
                }
            }
            MouseArea {
                id: key8
                height: 86.4
                width: 211.2
                x: 1274.4
                y: 592.2
                Item {
                    height: 86.4
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 4.79998
                        y: 1.80001
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
                }
            }
            MouseArea {
                id: key9
                height: 86.4
                width: 211.2
                x: 1519.2
                y: 592.2
                Item {
                    height: 86.4
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 2.40004
                        y: 1.80001
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
                }
            }
            MouseArea {
                id: key0
                height: 90
                width: 211.2
                x: 1274.4
                y: 702
                Item {
                    height: 90
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 4.79998
                        y: 3.59997
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
                }
            }
            MouseArea {
                id: keyC
                height: 90
                width: 211.2
                x: 1519.2
                y: 702
                Item {
                    height: 90
                    width: 211.2
                    Rectangle {
                        height: 82.8
                        radius: 10.8
                        width: 204
                        x: 2.40004
                        y: 3.59997
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
                }
            }
        }
        Item {
            anchors.fill: parent
            Item {
                height: 417.6
                width: 859.2
                x: 103.2
                y: 370.8
                Rectangle {
                    border.color: "#ff6f6f6f"
                    border.width: 10.8
                    color: "#ffffffff"
                    height: 422.37
                    radius: 36
                    width: 865.893
                    x: -3.34643
                    y: -2.38498
                }
            }
            Text {
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 43
                font.weight: 500
                height: 63
                horizontalAlignment: Text.AlignHCenter
                text: "NO."
                verticalAlignment: Text.AlignVCenter
                width: 112.8
                x: 256.8
                y: 588.6
            }
            Item {
                height: 162
                width: 170.4
                x: 420
                y: 498.6
                Rectangle {
                    border.color: "#ff000000"
                    border.width: 1.8
                    color: "#ffffffff"
                    height: 158.04
                    width: 165.12
                    x: 2.64
                    y: 1.97997
                }
            }
            Text {
                id: digit10
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 82
                font.weight: 500
                height: 118.8
                horizontalAlignment: Text.AlignHCenter
                text: "1"
                verticalAlignment: Text.AlignVCenter
                width: 62.4
                x: 472.8
                y: 514.8
            }
            Item {
                height: 162
                width: 170.4
                x: 636
                y: 498.6
                Rectangle {
                    border.color: "#ff000000"
                    border.width: 1.8
                    color: "#ffffffff"
                    height: 158.04
                    width: 165.12
                    x: 2.64002
                    y: 1.97997
                }
            }
            Text {
                id: digit1
                color: "#ff000000"
                font.family: "Source Han Sans"
                font.pixelSize: 82
                font.weight: 500
                height: 118.8
                horizontalAlignment: Text.AlignHCenter
                text: "2"
                verticalAlignment: Text.AlignVCenter
                width: 62.4
                x: 691.2
                y: 514.8
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: accept
                height: 90
                width: 859.2
                x: 103.2
                y: 826.2
                Rectangle {
                    height: 90
                    width: 859.2
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
                }
            }
        }
    }
    Item {
        id: header
        anchors.fill: parent
        visible: false
        Item {
            height: 280.8
            width: 2124
            x: -136.8
            y: -140.4
            Rectangle {
                color: "#ff183e77"
                height: 277.2
                width: 2116.8
                x: 2.40001
                y: 1.8
            }
        }
        MouseArea {
            id: cancel
            height: 90
            width: 307.2
            x: 74.4
            y: 23.4
            Item {
                height: 90
                width: 307.2
                Rectangle {
                    height: 82.8
                    radius: 10.8
                    width: 300
                    x: 2.40004
                    y: 3.59997
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
            }
        }
        Item {
            height: 90
            width: 307.2
            x: 1538.4
            y: 23.4
            Rectangle {
                height: 82.8
                radius: 10.8
                width: 300
                x: 4.79996
                y: 3.59997
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
        }
        Text {
            color: "#ff000000"
            font.family: "Source Han Sans"
            font.pixelSize: 30
            font.weight: 500
            height: 45
            horizontalAlignment: Text.AlignHCenter
            text: "English"
            verticalAlignment: Text.AlignVCenter
            width: 158.4
            x: 1610.4
            y: 43.2
        }
        Text {
            color: "#ffffffff"
            font.bold: true
            font.family: "Source Han Sans"
            font.pixelSize: 54
            height: 79.2
            horizontalAlignment: Text.AlignHCenter
            text: "12：24"
            verticalAlignment: Text.AlignVCenter
            width: 240
            x: 1200
            y: 25.2
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
                    height: 282.6
                    width: 1771.2
                    x: 74.4
                    y: 55.8
                    Rectangle {
                        color: "#ff183e77"
                        height: 277.2
                        width: 1766.4
                        x: 2.40004
                        y: 1.80001
                    }
                }
                Text {
                    color: "#ffffffff"
                    font.family: "Source Han Sans"
                    font.pixelSize: 190
                    font.weight: 500
                    height: 273.6
                    horizontalAlignment: Text.AlignHCenter
                    text: "精算機"
                    verticalAlignment: Text.AlignVCenter
                    width: 804
                    x: 556.8
                    y: 48.6
                }
            }
            Item {
                anchors.fill: parent
                Text {
                    color: "#ff000000"
                    font.bold: true
                    font.family: "Source Han Sans"
                    font.pixelSize: 77
                    height: 111.6
                    horizontalAlignment: Text.AlignHCenter
                    text: "画面を指でタップしてください"
                    verticalAlignment: Text.AlignVCenter
                    width: 1452
                    x: 235.2
                    y: 414
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 45
                    font.weight: 500
                    height: 64.8
                    horizontalAlignment: Text.AlignHCenter
                    text: "Tap the screen."
                    verticalAlignment: Text.AlignVCenter
                    width: 508.8
                    x: 705.6
                    y: 531
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 109.8
                    width: 686.4
                    x: 74.4
                    y: 676.8
                    Rectangle {
                        color: "#ffcbdfff"
                        height: 102.63
                        radius: 25.2
                        width: 681.6
                        x: 2.40004
                        y: 3.58519
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 31
                    font.weight: 500
                    height: 45
                    horizontalAlignment: Text.AlignHCenter
                    text: "お支払方法"
                    verticalAlignment: Text.AlignVCenter
                    width: 218.4
                    x: 307.2
                    y: 691.2
                }
            }
            Item {
                height: 291.6
                width: 1776
                x: 72
                y: 734.4
                Rectangle {
                    border.color: "#ffcbdfff"
                    border.width: 7.2
                    color: "#ffffffff"
                    height: 296.1
                    radius: 28.8
                    width: 1781.92
                    x: -2.95767
                    y: -2.25
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 95.4
                    source: "images/c65caab073f1a0d0.png"
                    width: 139.2
                    x: 206.4
                    y: 837
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 25
                    font.weight: 500
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "現金"
                    verticalAlignment: Text.AlignVCenter
                    width: 72
                    x: 240
                    y: 765
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 22
                    font.weight: 500
                    height: 30.6
                    horizontalAlignment: Text.AlignHCenter
                    text: "新紙幣も使えます"
                    verticalAlignment: Text.AlignVCenter
                    width: 242.4
                    x: 156
                    y: 943.2
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    anchors.fill: parent
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 50.4
                        source: "images/498ce93ca6ff4e67903ef063d0f0323128da491d.png"
                        width: 103.2
                        x: 753.6
                        y: 919.8
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 50.4
                        source: "images/730f0f6b1a881c07b6539bb9b5886d8c8d625807.png"
                        width: 88.8
                        x: 638.4
                        y: 919.8
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 81
                        source: "images/78c7ddb491d416672ef5bb72b2851002798037cd.png"
                        width: 108
                        x: 506.4
                        y: 903.6
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 79.2
                        source: "images/05fb0171bc9c95570a5e46f62b87df372ecfe9d4.png"
                        width: 146.4
                        x: 736.8
                        y: 822.6
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 50.4
                        source: "images/logo_Visa_s.png"
                        width: 134.4
                        x: 494.4
                        y: 837
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 57.6
                        source: "images/8e29757faf8d84aef5487a00405801fc68e82f7f.png"
                        width: 108
                        x: 628.8
                        y: 833.4
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 25
                    font.weight: 500
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "クレジットカード"
                    verticalAlignment: Text.AlignVCenter
                    width: 264
                    x: 552
                    y: 765
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 63
                    source: "images/suica.png"
                    width: 117.6
                    x: 1080
                    y: 813.6
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 70.2
                    source: "images/kitaca.png"
                    width: 103.2
                    x: 955.2
                    y: 810
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 66.6
                    source: "images/pasmo.png"
                    width: 120
                    x: 1207.2
                    y: 811.8
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 46.8
                    source: "images/toica.png"
                    width: 120
                    x: 940.8
                    y: 878.4
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 39.6
                    source: "images/manaca.png"
                    width: 141.6
                    x: 1065.6
                    y: 885.6
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 57.6
                    source: "images/icoca.png"
                    width: 120
                    x: 1207.2
                    y: 880.2
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 52.2
                    source: "images/sugoca.png"
                    width: 115.2
                    x: 943.2
                    y: 932.4
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 36
                    source: "images/nimoca.png"
                    width: 127.2
                    x: 1070.4
                    y: 941.4
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 39.6
                    source: "images/be5725fdd6cd4288.png"
                    width: 120
                    x: 1207.2
                    y: 941.4
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 25
                    font.weight: 500
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "交通系IC"
                    verticalAlignment: Text.AlignVCenter
                    width: 146.4
                    x: 1068
                    y: 765
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    anchors.fill: parent
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 86.4
                        source: "images/7c3a9aed3242d4cef15d5cece6939b528aa659c8.png"
                        width: 158.4
                        x: 1646.4
                        y: 858.6
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 57.6
                        source: "images/88b22f4bc2aa84a66895e3451a3ab988af08a648.png"
                        width: 103.2
                        x: 1526.4
                        y: 873
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 59.4
                        source: "images/eff4e4d3000699fe98a14af52a191fe59a4d7427.png"
                        width: 110.4
                        x: 1392
                        y: 873
                    }
                }
                Text {
                    color: "#ff000000"
                    font.family: "Source Han Sans"
                    font.pixelSize: 25
                    font.weight: 500
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "電子マネー"
                    verticalAlignment: Text.AlignVCenter
                    width: 172.8
                    x: 1492.8
                    y: 765
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 207
                    width: 12
                    x: 914.4
                    y: 777.6
                    Rectangle {
                        color: "#ff183e77"
                        height: 201.6
                        width: 4.8
                        x: 2.40004
                        y: 1.80003
                    }
                }
                Item {
                    height: 207
                    width: 12
                    x: 453.6
                    y: 777.6
                    Rectangle {
                        color: "#ff183e77"
                        height: 201.6
                        width: 4.8
                        x: 2.40002
                        y: 1.80003
                    }
                }
                Item {
                    height: 207
                    width: 12
                    x: 1348.8
                    y: 777.6
                    Rectangle {
                        color: "#ff183e77"
                        height: 201.6
                        width: 4.8
                        x: 4.79997
                        y: 1.80003
                    }
                }
            }
        }
    }
}
