import QtQuick 2.11
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "./ChatRect"

/**
 * @file    PageViews.qml
 * @version 1.0
 * @brief
 * @date    2018-09-07
 * @author  lanbery
 * @section LICENSE Copyright (c) 2018 - 2025 lanbery,NBS Chain Co.
 */
RowLayout   {
    id                                          : rootChatLayoutID;
    anchors.fill                                : parent;
    spacing                                     : 0*dp;

    /* Left */
    LeftPeerViewRect   {
        id                                      : leftPeersRectID;
        Layout.fillWidth                        : true;
        Layout.fillHeight                       : true;
        Layout.minimumWidth                     : 240*dp;
        Layout.preferredWidth                   : 240*dp;
        Layout.maximumWidth                     : 240*dp;
        Layout.minimumHeight                    : settings.midMinHeight*dp;
        Layout.maximumHeight                    : dpi2kMax;

    }

    Rectangle   {
        id                                      : rightMessageRectID;
        color                                   : Qt.lighter(bgColor);
        Layout.fillWidth: true;
        Layout.fillHeight: true;
        Layout.minimumWidth: 600*dp;
        Layout.preferredWidth: 600*dp;
        Layout.maximumWidth: dpi2kMax;
        Layout.minimumHeight: settings.midMinHeight*dp;
        Layout.maximumHeight: dpi2kMax;

        Text    {
            anchors.centerIn: parent;
            text : parent.width+"px"+parent.height;
        }
    }
}



