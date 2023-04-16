//
//  SwiftUIView.swift
//  
//
//  Created by kevin marinho on 16/04/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct IntroView: View {
    
    @State private var isDarkened = false
    @State private var isActive = false
    @State var isButtonAct = false
    @State var isTextOne = false
    @State var isTextTwo = false
    @State var isTextThree = false
    @State var nextView = false
    
    var body: some View {
        ZStack{
            Color.backgroundBlue
                .ignoresSafeArea(.all)
            Image("backgroundGWTF")
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea(.all)
                .blur(radius: isDarkened ? 800 : 0)
                .opacity(isDarkened ? 0 : 1)
                .animation(.easeInOut(duration: 3.0))
            ZStack{
                
                VStack(alignment: .center){
                    if isTextOne == true {
                        
                        Text("Go With The Flow")
                        
                        
                        Text("For the best experience Use your airpods!")
                    }
                    
                    if isTextTwo {
                        Text("Some evils like anxiety can take away your calm, your color. But maybe some sounds can help something...")
                            .onAppear{
                                withAnimation(.easeInOut(duration: 3)){
                                    isTextOne = false
                                }
                                
                            }
                        
                    }
                    if isTextThree {
                        Text("These sounds make our heart beat, our breathing rate, and our brain electrical rhythms change according to the rhythm and melody, in other words, Go With The Flow")
    
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
                                    AnimatedTextNext(textNext: "TAP TO NEXT")
                                        .alignmentGuide(.bottom) { dimension in
                                            dimension.height / 2
                                        }
                                        .offset(x: -20, y: 100) // ajuste o offset de acordo com a posição desejada
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

