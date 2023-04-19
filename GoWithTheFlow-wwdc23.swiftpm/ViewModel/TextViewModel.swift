//
//  File.swift
//  
//
//  Created by kevin marinho on 10/04/23.
//

import Foundation
import SwiftUI

struct AnimatedTextView: View {
    let text: String
    @State private var isShowingText = false
    let timer: TimeInterval
    let sizeWidth: Double
    let sizeHeight: Double
    
    var body: some View {
        Image(text)
            .resizable()
            .frame(width: UIScreen.main.bounds.width * sizeWidth, height: UIScreen.main.bounds.height * sizeHeight)
            .offset(y:-135)
            .padding()
            .opacity(isShowingText ? 1 : 0)
            .animation(.easeInOut(duration: 1.0))
            .onAppear {
                withAnimation {
                    isShowingText = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
                    withAnimation {
                        isShowingText = false
                    }
                }
            }
    }
}

struct AnimatedTextNext: View {
    @State var fadeInOut = false
    @State var textNext: String
    
    var body: some View {
        Image(textNext)
            .resizable()
            .frame(width: UIScreen.main.bounds.width * 0.13, height: UIScreen.main.bounds.height * 0.04)
            .onAppear(){
                withAnimation(Animation .easeInOut(duration: 0.6).repeatForever(autoreverses: true)){
                    fadeInOut.toggle()
                }
            }.opacity(fadeInOut ? 0 : 1)
    }
}



