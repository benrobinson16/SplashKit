// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

/// Represents an Apple-like splash screen view.
public struct SplashScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    /// The content the `SplashScreenView` should display.
    let content: SplashScreenData
    
    public init(_ contentData: SplashScreenData) {
        self.content = contentData
    }
    
    public var body: some View {
        
        SplashScrollView(buttonText: content.buttonText, buttonColor: content.tintColor) {
            content.onButtonTap()
            presentationMode.wrappedValue.dismiss()
        } content: {
            VStack(alignment: .center) {
                TitleView(title: content.title, image: content.titleImage, mainColor: content.tintColor)
                    .padding(.top)
                    .padding(.top)
                InfoContainerView(content: content.infoContent, mainColor: content.tintColor)
            }
        }
        
    }
    
}
