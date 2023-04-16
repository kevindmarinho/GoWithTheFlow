//
//  SwiftUIView.swift
//  
//
//  Created by kevin marinho on 14/04/23.
//

import SwiftUI


//MARK: TUTORIAL
struct TutorialAnimation: View {
    
    @StateObject var animatedCircleRight = AnimatedCircleView()
    @StateObject var animatedCircleLeft = AnimatedCircleView()
    let impactRigid = UIImpactFeedbackGenerator(style: .rigid)
    
    
    var body: some View {
        ZStack {
            //DIREITA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleRight)
                .frame(width: 400, height: 400)
                .position(x: 600, y: 200)
            //ESQUERDA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleLeft)
                .frame(width: 400, height: 400)
                .position(x: 250, y: 200)
            


        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
        }
    }
}

//MARK: LEVEL ONE ANIMATION

struct LevelOneAnimation: View {
    let impactRigid = UIImpactFeedbackGenerator(style: .rigid)
    @StateObject var animatedCircleRight = AnimatedCircleView()
    @StateObject var animatedCircleLeft = AnimatedCircleView()
    
    
    var body: some View {
        ZStack {
            //DIREITA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleRight)
                .frame(width: 400, height: 400)
                .position(x: 600, y: 200)
            //ESQUERDA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleLeft)
                .frame(width: 400, height: 400)
                .position(x: 250, y: 200)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 8.5) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
        }
    }
}

//MARK: LEVEL TWO ANIMATION
struct LevelTwoAnimation: View {
    let impactRigid = UIImpactFeedbackGenerator(style: .rigid)
    @StateObject var animatedCircleRight = AnimatedCircleView()
    @StateObject var animatedCircleLeft = AnimatedCircleView()
    
    
    var body: some View {
        ZStack {
            //DIREITA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleRight)
                .frame(width: 400, height: 400)
                .position(x: 600, y: 200)
            //ESQUERDA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleLeft)
                .frame(width: 400, height: 400)
                .position(x: 250, y: 200)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 8.5) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
        }
    }
}

//MARK: LEVEL THREE ANIMATION
struct LevelThreeAnimation: View {
    let impactRigid = UIImpactFeedbackGenerator(style: .rigid)
    @StateObject var animatedCircleRight = AnimatedCircleView()
    @StateObject var animatedCircleLeft = AnimatedCircleView()
    
    
    var body: some View {
        ZStack {
            //DIREITA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleRight)
                .frame(width: 400, height: 400)
                .position(x: 600, y: 200)
            //ESQUERDA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleLeft)
                .frame(width: 400, height: 400)
                .position(x: 250, y: 200)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 9.0) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
        }
    }
}

//MARK: LEVEL FOUR ANIMATION
struct LevelFourAnimation: View {
    let impactRigid = UIImpactFeedbackGenerator(style: .rigid)
    @StateObject var animatedCircleRight = AnimatedCircleView()
    @StateObject var animatedCircleLeft = AnimatedCircleView()
    
    
    var body: some View {
        ZStack {
            //DIREITA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleRight)
                .frame(width: 400, height: 400)
                .position(x: 600, y: 200)
            //ESQUERDA
            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleLeft)
                .frame(width: 400, height: 400)
                .position(x: 250, y: 200)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.animatedCircleRight.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 8.0) {
                self.animatedCircleLeft.animateCircles()
                impactRigid.impactOccurred()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 11.5) {
                self.animatedCircleRight.animateCircles()
                
            }
        }
    }
}
