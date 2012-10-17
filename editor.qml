import QtGui 1.0

MainWindow {

  MenuBar {
    Menu {
      title: qsTr("File")

      Action {
        text: "New"
      }

      Separator {}

      Action {
        text: "Close"
        onTriggered: Qt.quit()
      }
    }

    Menu {
      title: qsTr("Edit")

      Action {
        text: "Copy"

        onTriggered: textEdit.copy()
      }

      Action {
        text: "Paste"

        onTriggered: textEdit.paste()
      }
    }

    Separator {}

    Menu {
      title: qsTr("Help")

      Action {
        text: "About"
      }

      Action {
        text: "About Qt"
      }
    }
  }

  ToolBar {
    Action {
      text: qsTr("New")
    }

    Separator {}

    Label {
      text: "Zoom"
    }
  }

  TextEdit {
    id: textEdit

    contextMenuPolicy: Qt.ActionsContextMenu

    Action {
      text: "Copy"
    }
    Action {
      text: "Paste"
    }
  }

  StatusBar {
    Label {
      StatusBar.stretch: 2
      text: "Pos:"
    }
  }
}