//
//  SwiftUIView.swift
//  
//
//  Created by kevin marinho on 16/04/23.
//

import SwiftUI
import SpriteKit

@available(iOS 16.0, *)
struct IntroView: View {
    
    @State private var isDarkened = false
    @State private var isActive = false
    @State var isButtonAct = false
    @State var isTextOne = false
    @State var isTextTwo = false
    @State var isTextThree = false
    @State var nextView = false
    @State var fadeInOut = false
    
    var scene: SKScene{
        let scene = airPodsAnimation()
        scene.scaleMode = .resizeFill
        return scene
    }
    
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            Image("backgroundIntro")
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea(.all)
                .blur(radius: isDarkened ? 800 : 0)
                .opacity(isDarkened ? 0 : 1)
                .animation(.easeInOut(duration: 3.0))
                .ignoresSafeArea(.all)
            ZStack{
                
                VStack(alignment: .center){
                    if isTextOne == true {
                        
                        Image("Logo")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.63, height: UIScreen.main.bounds.height * 0.13)
                            .padding(.top, 100)
                            
                        Spacer()
                        SpriteView(scene: scene, options: [.allowsTransparency])
                        
                   
                        Spacer()
                        Image("bestExp")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.20, height: UIScreen.main.bounds.height * 0.10)
                            .padding(.bottom, 30)
                    }
                    
                    if isTextTwo {
                        Image("firstText")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.25)
                        
                            .onAppear{
                                withAnimation(.easeInOut(duration: 3)){
                                    isTextOne = false
                                }
                                
                            }
                        
                    }
                    if isTextThree {
                        Image("secondText")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.40)
    
                    }
                
             
                }.onAppear{
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) {_ in
                        withAnimation(.easeInOut(duration: 1)){
                            isTextOne = true
                            
                        }
                    }
                }
                
                    Spacer()
                if isButtonAct == true {
                    Button(action: {
                        if isTextOne == true {
                            withAnimation(.easeInOut(duration: 2)){
                                isTextOne = false
                            }
                            withAnimation(.easeInOut(duration: 2)){
                                isTextTwo = true
                            }
                        } else if isTextOne == false && isTextTwo == true {
                            withAnimation(.easeIn(duration: 2)){
                                isTextTwo = false
                                isTextThree = true
                            }
                        } else {
                            if isTextTwo == false && isTextThree == true{
                                isDarkened.toggle()
                                Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) {_ in
                                    withAnimation(.easeInOut(duration: 3)){
                                        isActive = true
                                    }
                                }
                                Timer.scheduledTimer(withTimeInterval: 0, repeats: false) {_ in
                                    withAnimation(.easeOut(duration: 0.5)){
                                        isTextThree = false
                                        nextView = true
                                    }
                                    
                                    
                                }
                                
                            }
                        }

                    }) {
                        HStack {
                            if nextView == false {
                                Text("")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(Color.clear)
                                withAnimation{
                                    Image("tapToNext")
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width * 0.13, height: UIScreen.main.bounds.height * 0.04)
                                        .onAppear(){
                                            withAnimation(Animation .easeInOut(duration: 0.6).repeatForever(autoreverses: true)){
                                                fadeInOut.toggle()
                                            }
                                        }.opacity(fadeInOut ? 0 : 1)
                                        .alignmentGuide(.bottom) { dimension in
                                            dimension.height / 2
                                        }
                                        .offset(x: -20, y: 150) // ajuste o offset de acordo com a posição desejada
                                }
                            }
                        }
                        
                    }.background(NavigationLink(destination: GameView(), isActive: $isActive) { EmptyView() })
                }
                   
            }
           
            
        }.onAppear{
            Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) {_ in
                withAnimation{
                    isButtonAct = true
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

