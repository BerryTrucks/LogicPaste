import bb.cascades 1.0

Page {
    id: paste
    
    content: Container {
        scrollMode: ScrollMode.Vertical
        
        background: Color.create ("#272727")
        layout: StackLayout {
            layoutDirection: LayoutDirection.TopToBottom
            leftPadding: 16.0
            rightPadding: 16.0
            topPadding: 16.0
            bottomPadding: 16.0
        }
        Label {
            text: "Paste title:"
            textStyle.color: Color.White
        }
        TextField {
            id: pasteTitleField
            hintText: "Paste title (optional)"
        }
        
        Label {
            text: "New Paste"
            textStyle.color: Color.White
        }
        TextArea {
            id: pasteTextField
            preferredHeight: 400
            hintText: "Text to paste"
        }
        Divider {
        }
        Label {
            text: "Optional settings:"
            textStyle.color: Color.White
        }
        FormatDropDown {
            id: formatDropDown
            enabled: true
        }
        ExpirationDropDown {
            id: expirationDropDown
            enabled: true
        }
        ExposureDropDown {
            id: exposureDropDown
            enabled: true
        }
        Button {
            text: "Submit"
            layoutProperties: StackLayoutProperties {
                horizontalAlignment: HorizontalAlignment.Fill
            }
        }
    }
}
