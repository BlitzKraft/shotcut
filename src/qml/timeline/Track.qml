import QtQuick 2.0
import QtQml.Models 2.1

Rectangle {
    id: trackTop
    property alias model: trackModel.model
    property alias rootIndex: trackModel.rootIndex

    DelegateModel {
        id: trackModel
        Clip {
            clipName: name
            clipResource: resource
            clipDuration: duration
            isBlank: blank
            isAudio: audio
            height: trackTop.height
        }
    }

    Row {
        Repeater { model: trackModel }
    }
}