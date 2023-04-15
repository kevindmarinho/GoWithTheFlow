//
//  File.swift
//  
//
//  Created by kevin marinho on 07/04/23.
//

import Foundation
import SwiftUI
//MARK: ANIMATE CIRCLE
class AnimatedCircleView: ObservableObject {
    @Published var firstCircle = 0.2
    @Published var secondCircle = 0.3
    @Published var opacity = 0

    
    func animateCircles() {
        withAnimation(.easeIn(duration: 0.3)) {
            firstCircle = 0.2
            secondCircle = 0.3
            opacity = 1
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            withAnimation(.easeIn(duration: 0.3)) {
                 self.opacity = 0
                self.secondCircle = 0.2
                self.firstCircle = 0.3
                
             }
         }
        
    }
    func resetCircles() {
        firstCircle = 0.2
        secondCircle = 0.2
        opacity = 0
        
    }
}


struct AnimatedCircleViewOverlay: View {
    @ObservedObject var animatedCircleView: AnimatedCircleView
    var position: CGPoint?
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white, lineWidth: 5)
                .scaleEffect(animatedCircleView.firstCircle)
                .opacity(Double(animatedCircleView.opacity))
            
            Circle()
                .stroke(Color.white, lineWidth: 5)
                .scaleEffect(animatedCircleView.secondCircle)
                .opacity(Double(animatedCircleView.opacity))
        }
        .onAppear {
            // Reset circles when view appears
            animatedCircleView.resetCircles()
        }
    }
}
//MARK: SHAKE EFFECT

struct Shake: GeometryEffect {
    var amount: CGFloat = 10
    var shakesPerUnit = 3
    var animatableData: CGFloat
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX: amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)),y: 0))
    }
}


