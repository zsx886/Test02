import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window { //窗口对象
    //属性
    id: fatherWin
    visible: true //是否显示
    width: 640 //宽
    height: 480 //高
    title: qsTr("First Window") //标题
    color: "gray" //设置窗口颜色
    SecondWindow{id:secondWin} //调用新建的窗口并赋予id

    property string nm: "张三" //自定义属性,注意自定义属性语法:property 类型 属性名:属性值
    /*
        QML中用三个等号来判断属性类型和值是否相等:nm==="张三"
        QML中用两个等号来判断属性值是否相等:nm=="张三"
    */

    function exit(){ //函数定义,QML中的函数定义要用function关键字修饰
        Qt.quit(); //退出
    }

    //子对象
    Button{ //按钮对象
        //属性
        id: btn1 //id
        x: 500 //距离y轴
        y: 200 //距离x轴
        text: "退出" //内容
        onClicked: { //按钮点击信号与槽的绑定
            console.log(nm+"退出了") //输出语句
            //exit(); 调用方式一:直接调用
            fatherWin.exit(); //调用方式二:通过id(类名点)的方式调用
        }
    }
    /*
        QML中绑定信号与槽直接使用"on+信号名"这种形式即可
    */

    Button{
        //属性
        id: btn2
        x: 500
        y: 100
        text: "打开新窗口"
        onClicked: { //点击按钮弹出新窗口
            secondWin.show(); //显示新窗口
        }
    }

    Rectangle{ //矩形对象
        id: hand
        width: 100
        height: 100
        x: 100
        y: 50
        color: "black"
        border.color: "red" //边框颜色
        border.width: 5 //边框大小
        radius: 50 //圆角弧度大小

        //渐变色
        gradient: Gradient{
            GradientStop{position: 0.0;color: "yellow"} //0的位置为黄色
            GradientStop{position: 0.5;color: "green"} //0.5的位置为绿色
            GradientStop{position: 1.0;color: "blue"} //1的位置为蓝色
        }
    }

    Rectangle{
        id: body
        width: 100
        height: 150
        x: 100
        y: 150
        color: "blue"
    }

    Rectangle{
        id: heand
        width: 30
        height: 100
        x: 70
        y:170
        rotation: 45 //旋转45度
    }

    Text { //文本对象
        id: name
        text: qsTr("火柴人") //文本内容
        x: 120
        y: 25
        font.pointSize: 14 //字体大小
        color: "red" //文本颜色
        style: Text.Outline //设置字体样式，添加外边框
        styleColor: "black" //设置外边框为黑色
    }

    Button{
        id: pay
        width: 100
        height: 100
        x: 300
        y: 300
        icon.source: "qrc:/Icon/Icon/pay.png" //加载资源文件中的图标
        //设置图标大小
        icon.width: 100
        icon.height: 100
    }
}
