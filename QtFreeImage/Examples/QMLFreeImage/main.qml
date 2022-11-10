import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import Qt.labs.platform 1.1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    signal loadImage(string filename)

    function setImage(imageData)
    {
        imagePreview.source=imageData
    }

    Rectangle {
        anchors.fill: parent

        RowLayout{
             anchors.fill: parent
            FileDialog
            {
                id:fileDialog
                fileMode: FileDialog.OpenFile
                onAccepted: {
                    if(fileDialog.files.length>0)
                    {
                        var path=fileDialog.files[0].toString().replace("file://","")
                        loadImage(path);
                    }
                }
            }

            Button{
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                text:"Load Image..."
                onClicked: {
                    fileDialog.open()
                }
            }
            Image {
                id: imagePreview
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}
