import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    width: 320
    height: 240
    title: qsTr("SecondWindow")
    color: "red" //设置窗口颜色

    Text { //文本对象
        x: 120
        y: 100
        text: qsTr("SecondWindow")
    }
}
