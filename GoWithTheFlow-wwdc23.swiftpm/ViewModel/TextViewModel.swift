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
    
    var body: some View {
        Text(text)
            .foregroundColor(.fontBlue)
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
        Text(textNext)
            .foregroundColor(.white)
            .onAppear(){
                withAnimation(Animation .easeInOut(duration: 0.6).repeatForever(autoreverses: true)){
                    fadeInOut.toggle()
                }
            }.opacity(fadeInOut ? 0 : 1)
    }
}



