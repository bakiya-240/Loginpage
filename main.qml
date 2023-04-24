import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Login page")

    Rectangle{
        anchors.centerIn: parent
        width: parent.width*0.8
        height: parent.height*0.8
        border.color: black
        border.width: 1
    Column{
        spacing: 10
        anchors.centerIn: parent

        Text {
            id: name
            text: qsTr("Email")
        }
        TextField{
            placeholderText: qsTr("Enter email id")
            validator: RegExpValidator { regExp: /^[^@\s]+@[^@\s]+\.[^@\s]+$/ }

        }

        Label {
            id: errorLabel
            text: name.validator.state === TextInput.Validator.Invalid ? "Invalid email address" : ""
            color: "red"
            visible: name.validator.state === TextInput.Validator.Invalid
        }
        Text {
            id: pass
            text: qsTr("password")}

        TextField{
            id :pass1
            placeholderText: qsTr("password")
            echoMode: TextInput.PasswordEchoOnEdit
            validator:IntValidator
        }
      Column {
            CheckBox {
                text: qsTr("Show password")
                checked: true

            }

    }
      Button{
          text: "login"
          enabled: pass1.text.length > 0
          onClicked: {
              console.log("login successful")
          }
      }


 }}
}
