import QtQuick
import QtQuick.Layouts

Item {
    height: 800
    width: 1280
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
        height: 802.667
        width: 1283.2
        x: -1.6
        y: -1.33333
        Rectangle {
            color: "#f5f5ed"
            height: 800
            width: 1280
            x: 1.6
            y: 1.33333
        }
    }
    Item {
        id: footer
        anchors.fill: parent
        visible: false
        Item {
            height: 86.6667
            width: 1283.2
            x: -1.6
            y: 716
            Rectangle {
                color: "#e9f1ff"
                height: 82.6667
                width: 1280
                x: 1.6
                y: 2.66665
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
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 32.2185
                height: 109.333
                horizontalAlignment: Text.AlignHCenter
                text: "ご利用ありがとうございました
 "
                verticalAlignment: Text.AlignVCenter
                width: 976
                x: 150.4
                y: 336
            }
            Item {
                height: 8
                width: 854.4
                x: 212.8
                y: 421.333
                Rectangle {
                    color: "#183e77"
                    height: 2.66671
                    width: 849.6
                    x: 1.60002
                    y: 2.66664
                }
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 22.1563
                height: 144
                horizontalAlignment: Text.AlignHCenter
                text: "精算後5分で再びロック板が上がりますので
５分以内に出庫してください
 "
                verticalAlignment: Text.AlignVCenter
                width: 963.2
                x: 160
                y: 482.667
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
                height: 110.667
                width: 785.6
                x: 281.6
                y: 132
                Rectangle {
                    color: "#ffffff"
                    height: 106.667
                    width: 780.8
                    x: 1.82331
                    y: 2.65381
                }
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 26.4444
                height: 89.3333
                horizontalAlignment: Text.AlignHCenter
                text: "料金は
 "
                verticalAlignment: Text.AlignVCenter
                width: 176
                x: 78.4
                y: 182.667
            }
            Text {
                id: amount
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 37.1553
                height: 126.667
                horizontalAlignment: Text.AlignHCenter
                text: "200
 "
                verticalAlignment: Text.AlignVCenter
                width: 153.6
                x: 596.8
                y: 156
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 20.4221
                height: 69.3333
                horizontalAlignment: Text.AlignHCenter
                text: "円
 "
                verticalAlignment: Text.AlignVCenter
                width: 43.2
                x: 979.2
                y: 192
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 26.4444
                height: 89.3333
                horizontalAlignment: Text.AlignHCenter
                text: "です
 "
                verticalAlignment: Text.AlignVCenter
                width: 113.6
                x: 1091.2
                y: 182.667
            }
        }
        Text {
            color: "#000000"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 21.1556
            height: 72
            horizontalAlignment: Text.AlignHCenter
            text: "お支払方法をお選びください
 "
            verticalAlignment: Text.AlignVCenter
            width: 614.4
            x: 332.8
            y: 308
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: cash
                height: 121.333
                width: 504
                x: 121.6
                y: 390.667
                Rectangle {
                    height: 121.333
                    width: 504
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#e98900"
                            position: 0.994385
                        }
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 25.6889
                        height: 86.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "現金
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 113.6
                        x: 195.2
                        y: 37.3333
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: card
                height: 121.333
                width: 504
                x: 652.8
                y: 390.667
                Rectangle {
                    height: 121.333
                    width: 504
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#e98900"
                            position: 0.994385
                        }
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 25.6889
                        height: 86.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "クレジットカード
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 427.2
                        x: 40
                        y: 37.3333
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: ic
                height: 121.333
                width: 504
                x: 121.6
                y: 534.667
                Rectangle {
                    height: 121.333
                    width: 504
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#e98900"
                            position: 0.994385
                        }
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 25.6889
                        height: 86.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "交通系IC
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 236.8
                        x: 134.4
                        y: 37.3333
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: pay
                height: 121.333
                width: 504
                x: 652.8
                y: 534.667
                Rectangle {
                    height: 121.333
                    width: 504
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#e98900"
                            position: 0.994385
                        }
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 25.6889
                        height: 86.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "電子マネー
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 280
                        x: 113.6
                        y: 37.3333
                    }
                }
            }
        }
        Text {
            color: "#000000"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 18.8889
            height: 64
            horizontalAlignment: Text.AlignHCenter
            text: "サービス券は先に入れてください
 "
            verticalAlignment: Text.AlignVCenter
            width: 622.4
            x: 329.6
            y: 744
        }
    }
    Item {
        id: parkingSlot
        anchors.fill: parent
        visible: false
        Text {
            color: "#000000"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 26.4444
            height: 89.3333
            horizontalAlignment: Text.AlignHCenter
            text: "駐車位置番号を入力してください
 "
            verticalAlignment: Text.AlignVCenter
            width: 868.8
            x: 206.4
            y: 165.333
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: key1
                height: 66.6667
                width: 140.8
                x: 689.6
                y: 272
                Item {
                    height: 66.6667
                    width: 140.8
                    Rectangle {
                        height: 61.3334
                        radius: 7.99999
                        width: 136
                        x: 1.60003
                        y: 2.66664
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "1
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 60.8
                        y: 22.6667
                    }
                }
            }
            MouseArea {
                id: key2
                height: 66.6667
                width: 140.8
                x: 849.6
                y: 272
                Item {
                    height: 66.6667
                    width: 140.8
                    Rectangle {
                        height: 61.3334
                        radius: 7.99999
                        width: 136
                        x: 3.19999
                        y: 2.66664
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "2
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 62.4
                        y: 22.6667
                    }
                }
            }
            MouseArea {
                id: key3
                height: 66.6667
                width: 140.8
                x: 1012.8
                y: 272
                Item {
                    height: 66.6667
                    width: 140.8
                    Rectangle {
                        height: 61.3334
                        radius: 7.99999
                        width: 136
                        x: 1.60002
                        y: 2.66664
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "3
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 60.8
                        y: 22.6667
                    }
                }
            }
            MouseArea {
                id: key4
                height: 65.3333
                width: 140.8
                x: 689.6
                y: 354.667
                Item {
                    height: 65.3333
                    width: 140.8
                    Rectangle {
                        height: 61.3333
                        radius: 7.99999
                        width: 136
                        x: 1.60003
                        y: 2.66666
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "4
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 60.8
                        y: 22.6667
                    }
                }
            }
            MouseArea {
                id: key5
                height: 65.3333
                width: 140.8
                x: 849.6
                y: 354.667
                Item {
                    height: 65.3333
                    width: 140.8
                    Rectangle {
                        height: 61.3333
                        radius: 7.99999
                        width: 136
                        x: 3.19999
                        y: 2.66666
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "5
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 62.4
                        y: 22.6667
                    }
                }
            }
            MouseArea {
                id: key6
                height: 65.3333
                width: 140.8
                x: 1012.8
                y: 354.667
                Item {
                    height: 65.3333
                    width: 140.8
                    Rectangle {
                        height: 61.3333
                        radius: 7.99999
                        width: 136
                        x: 1.60002
                        y: 2.66666
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "6
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 60.8
                        y: 22.6667
                    }
                }
            }
            MouseArea {
                id: key7
                height: 64
                width: 140.8
                x: 689.6
                y: 438.667
                Item {
                    height: 64
                    width: 140.8
                    Rectangle {
                        height: 61.3333
                        radius: 7.99999
                        width: 136
                        x: 1.60003
                        y: 1.33334
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "7
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 60.8
                        y: 21.3333
                    }
                }
            }
            MouseArea {
                id: key8
                height: 64
                width: 140.8
                x: 849.6
                y: 438.667
                Item {
                    height: 64
                    width: 140.8
                    Rectangle {
                        height: 61.3333
                        radius: 7.99999
                        width: 136
                        x: 3.19999
                        y: 1.33334
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "8
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 62.4
                        y: 21.3333
                    }
                }
            }
            MouseArea {
                id: key9
                height: 64
                width: 140.8
                x: 1012.8
                y: 438.667
                Item {
                    height: 64
                    width: 140.8
                    Rectangle {
                        height: 61.3333
                        radius: 7.99999
                        width: 136
                        x: 1.60002
                        y: 1.33334
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "9
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 60.8
                        y: 21.3333
                    }
                }
            }
            MouseArea {
                id: key0
                height: 66.6667
                width: 140.8
                x: 849.6
                y: 520
                Item {
                    height: 66.6667
                    width: 140.8
                    Rectangle {
                        height: 61.3334
                        radius: 7.99999
                        width: 136
                        x: 3.19999
                        y: 2.66665
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 12.6968
                        height: 42.6667
                        horizontalAlignment: Text.AlignHCenter
                        text: "0
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 16
                        x: 62.4
                        y: 22.6667
                    }
                }
            }
            MouseArea {
                id: keyC
                height: 66.6667
                width: 140.8
                x: 1012.8
                y: 520
                Item {
                    height: 66.6667
                    width: 140.8
                    Rectangle {
                        height: 61.3334
                        radius: 7.99999
                        width: 136
                        x: 1.60002
                        y: 2.66665
                        gradient: Gradient {
                            GradientStop {
                                color: "#dadada"
                                position: 0
                            }
                            GradientStop {
                                color: "#ffffff"
                                position: 1
                            }
                        }
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 10.5778
                        height: 36
                        horizontalAlignment: Text.AlignHCenter
                        text: "クリア
 "
                        verticalAlignment: Text.AlignVCenter
                        width: 65.6
                        x: 35.2
                        y: 25.3333
                    }
                }
            }
        }
        Item {
            anchors.fill: parent
            Item {
                height: 309.333
                width: 572.8
                x: 68.8
                y: 274.667
                Rectangle {
                    border.color: "#6f6f6f"
                    border.width: 8
                    color: "#ffffff"
                    height: 319.8
                    radius: 26.6666
                    width: 585.582
                    x: -6.39095
                    y: -5.23332
                }
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Medium"
                font.pointSize: 18.1333
                height: 61.3333
                horizontalAlignment: Text.AlignHCenter
                text: "NO.
 "
                verticalAlignment: Text.AlignVCenter
                width: 75.2
                x: 171.2
                y: 445.333
            }
            Item {
                height: 120
                width: 113.6
                x: 280
                y: 369.333
                Rectangle {
                    border.color: "#000000"
                    border.width: 1.33333
                    color: "#ffffff"
                    height: 118.222
                    width: 111.467
                    x: 1.06666
                    y: 0.888868
                }
            }
            Text {
                id: digit10
                color: "#000000"
                font.family: "SourceHanSans-Medium"
                font.pointSize: 34.428
                height: 117.333
                horizontalAlignment: Text.AlignHCenter
                text: "1
 "
                verticalAlignment: Text.AlignVCenter
                width: 41.6
                x: 315.2
                y: 397.333
            }
            Item {
                height: 120
                width: 113.6
                x: 424
                y: 369.333
                Rectangle {
                    border.color: "#000000"
                    border.width: 1.33333
                    color: "#ffffff"
                    height: 118.222
                    width: 111.467
                    x: 1.06668
                    y: 0.888868
                }
            }
            Text {
                id: digit1
                color: "#000000"
                font.family: "SourceHanSans-Medium"
                font.pointSize: 34.428
                height: 117.333
                horizontalAlignment: Text.AlignHCenter
                text: "2
 "
                verticalAlignment: Text.AlignVCenter
                width: 41.6
                x: 460.8
                y: 397.333
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: accept
                height: 66.6667
                width: 572.8
                x: 68.8
                y: 612
                Rectangle {
                    height: 66.6667
                    width: 572.8
                    gradient: Gradient {
                        GradientStop {
                            color: "#ffeec1"
                            position: 0
                        }
                        GradientStop {
                            color: "#ffbb04"
                            position: 0.334717
                        }
                        GradientStop {
                            color: "#e98900"
                            position: 0.994385
                        }
                    }
                    Item {
                        height: 57.3333
                        width: 142.4
                        x: 248
                        y: 18.6667
                        Column {
                            anchors.centerIn: parent
                            RowLayout {
                                anchors.horizontalCenter: parent.horizontalCenter
                                spacing: 0
                                Text {
                                    Layout.fillHeight: true
                                    color: "#ffffff"
                                    font.family: "SourceHanSans-Medium"
                                    font.pointSize: 16.7235
                                    text: "確定　"
                                    verticalAlignment: Text.AlignVCenter
                                }
                                Text {
                                    Layout.fillHeight: true
                                    color: "#ffffff"
                                    font.family: "SourceHanSans-Medium"
                                    font.pointSize: 11.9421
                                    text: "▶"
                                    verticalAlignment: Text.AlignVCenter
                                }
                            }
                            RowLayout {
                                anchors.horizontalCenter: parent.horizontalCenter
                                spacing: 0
                                Text {
                                    Layout.fillHeight: true
                                    color: "#ffffff"
                                    font.family: "SourceHanSans-Medium"
                                    font.pointSize: 11.9421
                                    text: " "
                                    verticalAlignment: Text.AlignVCenter
                                }
                            }
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
            height: 208
            width: 1416
            x: -91.2
            y: -104
            Rectangle {
                color: "#183e77"
                height: 205.333
                width: 1411.2
                x: 1.60001
                y: 1.33334
            }
        }
        MouseArea {
            id: cancel
            height: 66.6667
            width: 204.8
            x: 49.6
            y: 17.3333
            Item {
                height: 66.6667
                width: 204.8
                Rectangle {
                    height: 61.3334
                    radius: 7.99999
                    width: 200
                    x: 1.60003
                    y: 2.66665
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 12.6968
                    height: 42.6667
                    horizontalAlignment: Text.AlignHCenter
                    text: "トップに戻る
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 163.2
                    x: 17.6
                    y: 22.6667
                }
            }
        }
        Item {
            height: 66.6667
            width: 204.8
            x: 1025.6
            y: 17.3333
            Rectangle {
                height: 61.3334
                radius: 7.99999
                width: 200
                x: 3.19997
                y: 2.66665
            }
        }
        Text {
            color: "#000000"
            font.family: "SourceHanSans-Medium"
            font.pointSize: 12.6968
            height: 42.6667
            horizontalAlignment: Text.AlignHCenter
            text: "English
 "
            verticalAlignment: Text.AlignVCenter
            width: 105.6
            x: 1073.6
            y: 40
        }
        Text {
            color: "#ffffff"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 22.6018
            height: 77.3333
            horizontalAlignment: Text.AlignHCenter
            text: "12：24
 "
            verticalAlignment: Text.AlignVCenter
            width: 160
            x: 800
            y: 29.3333
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
                    height: 209.333
                    width: 1180.8
                    x: 49.6
                    y: 41.3333
                    Rectangle {
                        color: "#183e77"
                        height: 205.333
                        width: 1177.6
                        x: 1.60003
                        y: 1.33334
                    }
                }
                Text {
                    color: "#ffffff"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 79.5652
                    height: 270.667
                    horizontalAlignment: Text.AlignHCenter
                    text: "精算機
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 536
                    x: 371.2
                    y: 76
                }
            }
            Item {
                anchors.fill: parent
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Bold"
                    font.pointSize: 32.2185
                    height: 109.333
                    horizontalAlignment: Text.AlignHCenter
                    text: "画面を指でタップしてください
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 968
                    x: 156.8
                    y: 324
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 18.968
                    height: 64
                    horizontalAlignment: Text.AlignHCenter
                    text: "Tap the screen.
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 339.2
                    x: 470.4
                    y: 402.667
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 81.3333
                    width: 457.6
                    x: 49.6
                    y: 501.333
                    Rectangle {
                        color: "#cbdfff"
                        height: 76.022
                        radius: 18.6666
                        width: 454.4
                        x: 1.60003
                        y: 2.6557
                    }
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 12.9147
                    height: 44
                    horizontalAlignment: Text.AlignHCenter
                    text: "お支払方法
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 145.6
                    x: 204.8
                    y: 518.667
                }
            }
            Item {
                height: 216
                width: 1184
                x: 48
                y: 544
                Rectangle {
                    border.color: "#cbdfff"
                    border.width: 5.33333
                    color: "#ffffff"
                    height: 214.356
                    radius: 21.3333
                    width: 1181.97
                    x: 1.01488
                    y: 0.822225
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 70.6667
                    source: "images/1192bfad00425fed5d9992fce4bbb61baba2723f4004f526ae64dc8f07250aa9.png"
                    width: 92.8
                    x: 137.6
                    y: 620
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 10.5778
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "現金
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 48
                    x: 160
                    y: 572
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 9.06667
                    height: 30.6667
                    horizontalAlignment: Text.AlignHCenter
                    text: "新紙幣も使えます
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 161.6
                    x: 104
                    y: 704
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    anchors.fill: parent
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 37.3333
                        source: "images/498ce93ca6ff4e67903ef063d0f0323128da491d.png"
                        width: 68.8
                        x: 502.4
                        y: 681.333
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 37.3333
                        source: "images/730f0f6b1a881c07b6539bb9b5886d8c8d625807.png"
                        width: 59.2
                        x: 425.6
                        y: 681.333
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 60
                        source: "images/78c7ddb491d416672ef5bb72b2851002798037cd.png"
                        width: 72
                        x: 337.6
                        y: 669.333
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 58.6667
                        source: "images/05fb0171bc9c95570a5e46f62b87df372ecfe9d4.png"
                        width: 97.6
                        x: 491.2
                        y: 609.333
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 37.3333
                        source: "images/logo_Visa_s.png"
                        width: 89.6
                        x: 329.6
                        y: 620
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 42.6667
                        source: "images/8e29757faf8d84aef5487a00405801fc68e82f7f.png"
                        width: 72
                        x: 419.2
                        y: 617.333
                    }
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 10.5778
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "クレジットカード
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 176
                    x: 368
                    y: 572
                }
            }
            Item {
                anchors.fill: parent
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 46.6667
                    source: "images/suica.png"
                    width: 78.4
                    x: 720
                    y: 602.667
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 52
                    source: "images/kitaca.png"
                    width: 68.8
                    x: 636.8
                    y: 600
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 49.3333
                    source: "images/pasmo.png"
                    width: 80
                    x: 804.8
                    y: 601.333
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 34.6667
                    source: "images/toica.png"
                    width: 80
                    x: 627.2
                    y: 650.667
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 29.3333
                    source: "images/manaca.png"
                    width: 94.4
                    x: 710.4
                    y: 656
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 42.6667
                    source: "images/icoca.png"
                    width: 80
                    x: 804.8
                    y: 652
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 38.6667
                    source: "images/sugoca.png"
                    width: 76.8
                    x: 628.8
                    y: 690.667
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 26.6667
                    source: "images/nimoca.png"
                    width: 84.8
                    x: 713.6
                    y: 697.333
                }
                Image {
                    fillMode: Image.PreserveAspectFit
                    height: 29.3333
                    source: "images/aeda76088e69dc52429772a34100ef8c1423c731c0001e253f9734f819f77606.png"
                    width: 80
                    x: 804.8
                    y: 697.333
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 10.5778
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "交通系IC
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 97.6
                    x: 712
                    y: 572
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    anchors.fill: parent
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 64
                        source: "images/7c3a9aed3242d4cef15d5cece6939b528aa659c8.png"
                        width: 105.6
                        x: 1097.6
                        y: 636
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 42.6667
                        source: "images/88b22f4bc2aa84a66895e3451a3ab988af08a648.png"
                        width: 68.8
                        x: 1017.6
                        y: 646.667
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 44
                        source: "images/eff4e4d3000699fe98a14af52a191fe59a4d7427.png"
                        width: 73.6
                        x: 928
                        y: 646.667
                    }
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 10.5778
                    height: 36
                    horizontalAlignment: Text.AlignHCenter
                    text: "電子マネー
 "
                    verticalAlignment: Text.AlignVCenter
                    width: 115.2
                    x: 995.2
                    y: 572
                }
            }
            Item {
                anchors.fill: parent
                Item {
                    height: 153.333
                    width: 8
                    x: 609.6
                    y: 576
                    Rectangle {
                        color: "#183e77"
                        height: 149.333
                        width: 3.2
                        x: 1.60003
                        y: 1.33335
                    }
                }
                Item {
                    height: 153.333
                    width: 8
                    x: 302.4
                    y: 576
                    Rectangle {
                        color: "#183e77"
                        height: 149.333
                        width: 3.2
                        x: 1.60002
                        y: 1.33335
                    }
                }
                Item {
                    height: 153.333
                    width: 8
                    x: 899.2
                    y: 576
                    Rectangle {
                        color: "#183e77"
                        height: 149.333
                        width: 3.2
                        x: 3.19998
                        y: 1.33335
                    }
                }
            }
        }
    }
}
