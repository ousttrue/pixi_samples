// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick

Rectangle {
    id: root
    property bool keyDown: false

    gradient: Gradient {
        GradientStop { position: 0; color: mouse.pressed ? "lightsteelblue" : (root.keyDown ? "blue" : "steelblue") }
        GradientStop { position: 1; color: "black" }
    }

    Text {
        anchors.centerIn: parent
        text: "Qt Quick in a texture"
        font.pointSize: 40
        color: "white"

        SequentialAnimation on rotation {
            PauseAnimation { duration: 2500 }
            NumberAnimation { from: 0; to: 360; duration: 5000; easing.type: Easing.InOutCubic }
            loops: Animation.Infinite
        }
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
    }

    Keys.onPressed: keyDown = true
    Keys.onReleased: keyDown = false
}
