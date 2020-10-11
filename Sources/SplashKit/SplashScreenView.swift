// Copyright (c) 2020 Benjamin Robinson. All Rights Reserved.

import SwiftUI

public struct SplashScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
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

        
//        ZStack {
//
//            ScrollView {
//
//                VStack(alignment: .center) {
//
//
//
//                    Spacer(minLength: 80)
//
//                }
//
//            }
//
//            VStack {
//
//                Spacer()
//
//                Button {
//                    content.onButtonTap()
//                    presentationMode.wrappedValue.dismiss()
//                } label: {
//                    Text(content.buttonText)
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .padding()
//                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
//                        .background(RoundedRectangle(cornerRadius: 15, style: .continuous).fill(content.tintColor))
//                        .padding(.bottom)
//                }
//                .padding(.horizontal)
//                .padding(.top)
//                .padding(.top)
//                .background(
//                    LinearGradient(
//                        gradient: Gradient(colors: [Color(.systemBackground),
//                                                    Color(.systemBackground),
//                                                    Color(.systemBackground),
//                                                    Color(.systemBackground).opacity(0.0)]),
//                        startPoint: .center,
//                        endPoint: .top)
//                        .edgesIgnoringSafeArea(.bottom)
//                )
//
//            }
//
//        }
        
    }
    
}
