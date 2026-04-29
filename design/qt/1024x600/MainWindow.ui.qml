import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects as GE

Item {
    height: 600
    width: 1024
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
        width: 1026.56
        x: -1.28
        y: -1
        Rectangle {
            color: "#f5f5ed"
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
                color: "#e9f1ff"
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
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 28.4281
                height: 42
                horizontalAlignment: Text.AlignHCenter
                text: "ご利用ありがとうございました"
                verticalAlignment: Text.AlignVCenter
                width: 770.56
                x: 126.72
                y: 252
            }
            Item {
                height: 6
                width: 683.52
                x: 170.24
                y: 316
                Rectangle {
                    color: "#183e77"
                    height: 2.00003
                    width: 679.68
                    x: 1.28002
                    y: 1.99998
                }
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 19.5497
                height: 80
                horizontalAlignment: Text.AlignHCenter
                text: "精算後5分で再びロック板が上がりますので
５分以内に出庫してください"
                verticalAlignment: Text.AlignVCenter
                width: 769.28
                x: 126.72
                y: 362
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
                    color: "#ffffff"
                    height: 80
                    width: 624.64
                    x: 1.45865
                    y: 1.99036
                }
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 23.3333
                height: 34
                horizontalAlignment: Text.AlignHCenter
                text: "料金は"
                verticalAlignment: Text.AlignVCenter
                width: 139.52
                x: 62.72
                y: 137
            }
            Text {
                id: amount
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 32.7841
                height: 37
                horizontalAlignment: Text.AlignHCenter
                text: "200"
                verticalAlignment: Text.AlignVCenter
                width: 117.76
                x: 480
                y: 124
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 18.0195
                height: 25
                horizontalAlignment: Text.AlignHCenter
                text: "円"
                verticalAlignment: Text.AlignVCenter
                width: 29.44
                x: 785.92
                y: 146
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Bold"
                font.pointSize: 23.3333
                height: 32
                horizontalAlignment: Text.AlignHCenter
                text: "です"
                verticalAlignment: Text.AlignVCenter
                width: 85.76
                x: 875.52
                y: 138
            }
        }
        Text {
            color: "#000000"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 18.6667
            height: 27
            horizontalAlignment: Text.AlignHCenter
            text: "お支払方法をお選びください"
            verticalAlignment: Text.AlignVCenter
            width: 488.96
            x: 268.8
            y: 231
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: cash
                height: 91
                width: 403.2
                x: 97.28
                y: 293
                Item {
                    height: 91
                    layer.enabled: true
                    width: 403.2
                    GE.LinearGradient {
                        end: Qt.point(202.24, 91.5)
                        height: 88
                        start: Qt.point(202.24, 0.5)
                        width: 399.36
                        x: 2.54733
                        y: 1.00229
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
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 22.6667
                        height: 33
                        horizontalAlignment: Text.AlignHCenter
                        layer.enabled: true
                        text: "現金"
                        verticalAlignment: Text.AlignVCenter
                        width: 89.6
                        x: 157.44
                        y: 29
                        layer.effect: GE.DropShadow {
                            color: "#3d575249"
                            horizontalOffset: 0
                            radius: 10
                            spread: 0.16
                            verticalOffset: 0
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
                width: 403.2
                x: 522.24
                y: 293
                Item {
                    height: 91
                    layer.enabled: true
                    width: 403.2
                    GE.LinearGradient {
                        end: Qt.point(202.24, 91.5)
                        height: 88
                        start: Qt.point(202.24, 0.5)
                        width: 399.36
                        x: 2.54729
                        y: 1.00229
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
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 22.6667
                        height: 32
                        horizontalAlignment: Text.AlignHCenter
                        layer.enabled: true
                        text: "クレジットカード"
                        verticalAlignment: Text.AlignVCenter
                        width: 335.36
                        x: 34.56
                        y: 29
                        layer.effect: GE.DropShadow {
                            color: "#3d575249"
                            horizontalOffset: 0
                            radius: 10
                            spread: 0.16
                            verticalOffset: 0
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
                width: 403.2
                x: 97.28
                y: 401
                Item {
                    height: 91
                    layer.enabled: true
                    width: 403.2
                    GE.LinearGradient {
                        end: Qt.point(202.24, 91.5)
                        height: 88
                        start: Qt.point(202.24, 0.5)
                        width: 399.36
                        x: 2.54733
                        y: 1.0023
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
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 22.6667
                        height: 32
                        horizontalAlignment: Text.AlignHCenter
                        layer.enabled: true
                        text: "交通系IC"
                        verticalAlignment: Text.AlignVCenter
                        width: 186.88
                        x: 108.8
                        y: 29
                        layer.effect: GE.DropShadow {
                            color: "#3d575249"
                            horizontalOffset: 0
                            radius: 10
                            spread: 0.16
                            verticalOffset: 0
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
                width: 403.2
                x: 522.24
                y: 401
                Item {
                    height: 91
                    layer.enabled: true
                    width: 403.2
                    GE.LinearGradient {
                        end: Qt.point(202.24, 91.5)
                        height: 88
                        start: Qt.point(202.24, 0.5)
                        width: 399.36
                        x: 2.54729
                        y: 1.0023
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
                    }
                    Text {
                        color: "#ffffff"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 22.6667
                        height: 30
                        horizontalAlignment: Text.AlignHCenter
                        layer.enabled: true
                        text: "電子マネー"
                        verticalAlignment: Text.AlignVCenter
                        width: 216.32
                        x: 93.44
                        y: 31
                        layer.effect: GE.DropShadow {
                            color: "#3d575249"
                            horizontalOffset: 0
                            radius: 10
                            spread: 0.16
                            verticalOffset: 0
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
            color: "#000000"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 16.6667
            height: 25
            horizontalAlignment: Text.AlignHCenter
            text: "サービス券は先に入れてください"
            verticalAlignment: Text.AlignVCenter
            width: 495.36
            x: 264.96
            y: 558
        }
    }
    Item {
        id: parkingSlot
        anchors.fill: parent
        visible: false
        Text {
            color: "#000000"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 23.3333
            height: 34
            horizontalAlignment: Text.AlignHCenter
            text: "駐車位置番号を入力してください"
            verticalAlignment: Text.AlignVCenter
            width: 691.2
            x: 166.4
            y: 124
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: key1
                height: 50
                width: 112.64
                x: 551.68
                y: 204
                Item {
                    height: 50
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 1.28002
                        y: 1.99998
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 50)
                            width: 108.8
                            x: 1.28002
                            y: 1.99998
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "1"
                        verticalAlignment: Text.AlignVCenter
                        width: 10.24
                        x: 49.92
                        y: 19
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
                width: 112.64
                x: 679.68
                y: 204
                Item {
                    height: 50
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 2.55999
                        y: 1.99998
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 50)
                            width: 108.8
                            x: 2.55999
                            y: 1.99998
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "2"
                        verticalAlignment: Text.AlignVCenter
                        width: 11.52
                        x: 49.92
                        y: 19
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
                width: 112.64
                x: 810.24
                y: 204
                Item {
                    height: 50
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 1.28002
                        y: 1.99998
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 50)
                            width: 108.8
                            x: 1.28002
                            y: 1.99998
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "3"
                        verticalAlignment: Text.AlignVCenter
                        width: 11.52
                        x: 48.64
                        y: 19
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
                width: 112.64
                x: 551.68
                y: 266
                Item {
                    height: 49
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 1.28002
                        y: 1.99999
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0.5)
                            height: 46
                            start: Qt.point(56.32, 49.5)
                            width: 108.8
                            x: 1.28002
                            y: 1.99999
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "4"
                        verticalAlignment: Text.AlignVCenter
                        width: 12.8
                        x: 48.64
                        y: 19
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
                width: 112.64
                x: 679.68
                y: 266
                Item {
                    height: 49
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 2.55999
                        y: 1.99999
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0.5)
                            height: 46
                            start: Qt.point(56.32, 49.5)
                            width: 108.8
                            x: 2.55999
                            y: 1.99999
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "5"
                        verticalAlignment: Text.AlignVCenter
                        width: 11.52
                        x: 49.92
                        y: 19
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
                width: 112.64
                x: 810.24
                y: 266
                Item {
                    height: 49
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 1.28002
                        y: 1.99999
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0.5)
                            height: 46
                            start: Qt.point(56.32, 49.5)
                            width: 108.8
                            x: 1.28002
                            y: 1.99999
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "6"
                        verticalAlignment: Text.AlignVCenter
                        width: 10.24
                        x: 49.92
                        y: 19
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
                width: 112.64
                x: 551.68
                y: 329
                Item {
                    height: 48
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 1.28002
                        y: 1.00001
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 48)
                            width: 108.8
                            x: 1.28002
                            y: 1.00001
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "7"
                        verticalAlignment: Text.AlignVCenter
                        width: 11.52
                        x: 48.64
                        y: 18
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
                width: 112.64
                x: 679.68
                y: 329
                Item {
                    height: 48
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 2.55999
                        y: 1.00001
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 48)
                            width: 108.8
                            x: 2.55999
                            y: 1.00001
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "8"
                        verticalAlignment: Text.AlignVCenter
                        width: 10.24
                        x: 51.2
                        y: 18
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
                width: 112.64
                x: 810.24
                y: 329
                Item {
                    height: 48
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 1.28002
                        y: 1.00001
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 48)
                            width: 108.8
                            x: 1.28002
                            y: 1.00001
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "9"
                        verticalAlignment: Text.AlignVCenter
                        width: 10.24
                        x: 49.92
                        y: 18
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
                width: 112.64
                x: 679.68
                y: 390
                Item {
                    height: 50
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 2.55999
                        y: 1.99998
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 50)
                            width: 108.8
                            x: 2.55999
                            y: 1.99998
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 11.2031
                        height: 12
                        horizontalAlignment: Text.AlignHCenter
                        text: "0"
                        verticalAlignment: Text.AlignVCenter
                        width: 10.24
                        x: 51.2
                        y: 19
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
                width: 112.64
                x: 810.24
                y: 390
                Item {
                    height: 50
                    layer.enabled: true
                    width: 112.64
                    Rectangle {
                        height: 46
                        layer.enabled: true
                        radius: 5.99999
                        width: 108.8
                        x: 1.28002
                        y: 1.99998
                        layer.effect: GE.LinearGradient {
                            end: Qt.point(56.32, 0)
                            height: 46
                            start: Qt.point(56.32, 50)
                            width: 108.8
                            x: 1.28002
                            y: 1.99998
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
                    }
                    Text {
                        color: "#000000"
                        font.family: "SourceHanSans-Medium"
                        font.pointSize: 9.33333
                        height: 13
                        horizontalAlignment: Text.AlignHCenter
                        text: "クリア"
                        verticalAlignment: Text.AlignVCenter
                        width: 52.48
                        x: 29.44
                        y: 19
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
                width: 458.24
                x: 55.04
                y: 206
                Rectangle {
                    border.color: "#6f6f6f"
                    border.width: 6
                    color: "#ffffff"
                    height: 235.85
                    radius: 20
                    width: 463.346
                    x: -2.55276
                    y: -1.92499
                }
            }
            Text {
                color: "#000000"
                font.family: "SourceHanSans-Medium"
                font.pointSize: 16
                height: 18
                horizontalAlignment: Text.AlignHCenter
                text: "NO."
                verticalAlignment: Text.AlignVCenter
                width: 55.04
                x: 140.8
                y: 337
            }
            Item {
                height: 90
                width: 90.88
                x: 224
                y: 277
                Rectangle {
                    border.color: "#000000"
                    border.width: 1
                    color: "#ffffff"
                    height: 88
                    width: 88.32
                    x: 1.28
                    y: 0.999984
                }
            }
            Text {
                id: digit10
                color: "#000000"
                font.family: "SourceHanSans-Medium"
                font.pointSize: 30.3777
                height: 33
                horizontalAlignment: Text.AlignHCenter
                text: "1"
                verticalAlignment: Text.AlignVCenter
                width: 25.6
                x: 256
                y: 306
            }
            Item {
                height: 90
                width: 90.88
                x: 339.2
                y: 277
                Rectangle {
                    border.color: "#000000"
                    border.width: 1
                    color: "#ffffff"
                    height: 88
                    width: 88.32
                    x: 1.28001
                    y: 0.999984
                }
            }
            Text {
                id: digit1
                color: "#000000"
                font.family: "SourceHanSans-Medium"
                font.pointSize: 30.3777
                height: 34
                horizontalAlignment: Text.AlignHCenter
                text: "2"
                verticalAlignment: Text.AlignVCenter
                width: 29.44
                x: 369.92
                y: 305
            }
        }
        Item {
            anchors.fill: parent
            MouseArea {
                id: accept
                height: 50
                width: 458.24
                x: 55.04
                y: 459
                Item {
                    height: 50
                    layer.enabled: true
                    width: 458.24
                    GE.LinearGradient {
                        end: Qt.point(229.12, 50)
                        height: 46
                        start: Qt.point(229.12, 0)
                        width: 455.68
                        x: 1.28001
                        y: 1.99999
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
                    }
                    Item {
                        height: 21
                        layer.enabled: true
                        width: 112.64
                        x: 198.4
                        y: 14
                        Column {
                            anchors.centerIn: parent
                            RowLayout {
                                anchors.horizontalCenter: parent.horizontalCenter
                                spacing: 0
                                Text {
                                    Layout.fillHeight: true
                                    color: "#ffffff"
                                    font.family: "SourceHanSans-Medium"
                                    font.pointSize: 14.756
                                    text: "確定　"
                                    verticalAlignment: Text.AlignVCenter
                                }
                                Text {
                                    Layout.fillHeight: true
                                    color: "#ffffff"
                                    font.family: "SourceHanSans-Medium"
                                    font.pointSize: 10.5371
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
                                    font.pointSize: 10.5371
                                    text: ""
                                    verticalAlignment: Text.AlignVCenter
                                }
                            }
                        }
                        layer.effect: GE.DropShadow {
                            color: "#52575249"
                            horizontalOffset: 0
                            radius: 9
                            spread: 0.14
                            verticalOffset: 0
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
            width: 1132.8
            x: -72.96
            y: -78
            Rectangle {
                color: "#183e77"
                height: 154
                width: 1128.96
                x: 1.28001
                y: 1
            }
        }
        MouseArea {
            id: cancel
            height: 50
            width: 163.84
            x: 39.68
            y: 13
            Item {
                height: 50
                layer.enabled: true
                width: 163.84
                Rectangle {
                    height: 46
                    layer.enabled: true
                    radius: 5.99999
                    width: 160
                    x: 1.28002
                    y: 1.99999
                    layer.effect: GE.LinearGradient {
                        end: Qt.point(81.92, 0)
                        height: 46
                        start: Qt.point(81.92, 50)
                        width: 160
                        x: 1.28002
                        y: 1.99999
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
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 11.2031
                    height: 17
                    horizontalAlignment: Text.AlignHCenter
                    text: "トップに戻る"
                    verticalAlignment: Text.AlignVCenter
                    width: 122.88
                    x: 19.2
                    y: 16
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
            width: 163.84
            x: 820.48
            y: 13
            Rectangle {
                height: 46
                layer.enabled: true
                radius: 5.99999
                width: 160
                x: 2.55998
                y: 1.99999
                layer.effect: GE.LinearGradient {
                    end: Qt.point(81.92, 0)
                    height: 46
                    start: Qt.point(81.92, 50)
                    width: 160
                    x: 2.55998
                    y: 1.99999
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
            color: "#000000"
            font.family: "SourceHanSans-Medium"
            font.pointSize: 11.2031
            height: 18
            horizontalAlignment: Text.AlignHCenter
            text: "English"
            verticalAlignment: Text.AlignVCenter
            width: 81.92
            x: 860.16
            y: 30
        }
        Text {
            color: "#ffffff"
            font.family: "SourceHanSans-Bold"
            font.pointSize: 19.9428
            height: 22
            horizontalAlignment: Text.AlignHCenter
            text: "12：24"
            verticalAlignment: Text.AlignVCenter
            width: 125.44
            x: 642.56
            y: 27
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
                        color: "#183e77"
                        height: 154
                        width: 942.08
                        x: 1.28002
                        y: 1.00001
                    }
                }
                Text {
                    color: "#ffffff"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 70.2046
                    height: 98
                    horizontalAlignment: Text.AlignHCenter
                    text: "精算機"
                    verticalAlignment: Text.AlignVCenter
                    width: 423.68
                    x: 299.52
                    y: 60
                }
            }
            Item {
                anchors.fill: parent
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Bold"
                    font.pointSize: 28.4281
                    height: 41
                    horizontalAlignment: Text.AlignHCenter
                    text: "画面を指でタップしてください"
                    verticalAlignment: Text.AlignVCenter
                    width: 769.28
                    x: 128
                    y: 243
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 16.7365
                    height: 26
                    horizontalAlignment: Text.AlignHCenter
                    text: "Tap the screen."
                    verticalAlignment: Text.AlignVCenter
                    width: 268.8
                    x: 377.6
                    y: 304
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
                        color: "#cbdfff"
                        height: 57.0165
                        radius: 14
                        width: 363.52
                        x: 1.28002
                        y: 1.99177
                    }
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 11.3953
                    height: 17
                    horizontalAlignment: Text.AlignHCenter
                    text: "お支払方法"
                    verticalAlignment: Text.AlignVCenter
                    width: 113.92
                    x: 165.12
                    y: 389
                }
            }
            Item {
                height: 162
                width: 947.2
                x: 38.4
                y: 408
                Rectangle {
                    border.color: "#cbdfff"
                    border.width: 4
                    color: "#ffffff"
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
                    source: "images/1192bfad00425fed5d9992fce4bbb61baba2723f4004f526ae64dc8f07250aa9.png"
                    width: 74.24
                    x: 110.08
                    y: 465
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 9.33333
                    height: 14
                    horizontalAlignment: Text.AlignHCenter
                    text: "現金"
                    verticalAlignment: Text.AlignVCenter
                    width: 37.12
                    x: 129.28
                    y: 429
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 8
                    height: 13
                    horizontalAlignment: Text.AlignHCenter
                    text: "新紙幣も使えます"
                    verticalAlignment: Text.AlignVCenter
                    width: 129.28
                    x: 81.92
                    y: 527
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
                        width: 55.04
                        x: 401.92
                        y: 511
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 28
                        source: "images/730f0f6b1a881c07b6539bb9b5886d8c8d625807.png"
                        width: 47.36
                        x: 340.48
                        y: 511
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 45
                        source: "images/78c7ddb491d416672ef5bb72b2851002798037cd.png"
                        width: 57.6
                        x: 270.08
                        y: 502
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 44
                        source: "images/05fb0171bc9c95570a5e46f62b87df372ecfe9d4.png"
                        width: 78.08
                        x: 392.96
                        y: 457
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 28
                        source: "images/logo_Visa_s.png"
                        width: 71.68
                        x: 263.68
                        y: 465
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 32
                        source: "images/8e29757faf8d84aef5487a00405801fc68e82f7f.png"
                        width: 57.6
                        x: 335.36
                        y: 463
                    }
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 9.33333
                    height: 13
                    horizontalAlignment: Text.AlignHCenter
                    text: "クレジットカード"
                    verticalAlignment: Text.AlignVCenter
                    width: 138.24
                    x: 295.68
                    y: 429
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
                    source: "images/aeda76088e69dc52429772a34100ef8c1423c731c0001e253f9734f819f77606.png"
                    width: 64
                    x: 643.84
                    y: 523
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 9.33333
                    height: 14
                    horizontalAlignment: Text.AlignHCenter
                    text: "交通系IC"
                    verticalAlignment: Text.AlignVCenter
                    width: 76.8
                    x: 569.6
                    y: 429
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
                        width: 84.48
                        x: 878.08
                        y: 477
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 32
                        source: "images/88b22f4bc2aa84a66895e3451a3ab988af08a648.png"
                        width: 55.04
                        x: 814.08
                        y: 485
                    }
                    Image {
                        fillMode: Image.PreserveAspectFit
                        height: 33
                        source: "images/eff4e4d3000699fe98a14af52a191fe59a4d7427.png"
                        width: 58.88
                        x: 742.4
                        y: 485
                    }
                }
                Text {
                    color: "#000000"
                    font.family: "SourceHanSans-Medium"
                    font.pointSize: 9.33333
                    height: 14
                    horizontalAlignment: Text.AlignHCenter
                    text: "電子マネー"
                    verticalAlignment: Text.AlignVCenter
                    width: 89.6
                    x: 797.44
                    y: 429
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
                        color: "#183e77"
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
                        color: "#183e77"
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
                        color: "#183e77"
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
