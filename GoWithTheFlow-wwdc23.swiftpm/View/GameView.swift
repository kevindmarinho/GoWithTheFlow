//
//  GameView.swift
//  GoWithTheFlow-wwdc23
//
//  Created by kevin marinho on 07/04/23.
//

import SwiftUI
import AVFoundation
import AVKit
import Foundation



@available(iOS 16.0, *)
struct GameView: View {
    
    // SEQUENCE
    let tutorialSequence: [SoundOption] = [.firstTutorialSong, .secondTutorialSong, .SoundsLevelThreeFirst]
    let levelOneSequence: [SoundOption] = [.SoundsLevelOneFirst, .SoundsLevelOneSecond, .SoundsLevelOneThird, .SoundsLevelOneFourth]
    let levelTwoSequence: [SoundOption] = []
    let levelThreeSequence: [SoundOption] = []
    let levelFourSequence: [SoundOption] = []
    
    @StateObject var animatedCircleView = AnimatedCircleView()
    @State var pos = CGPoint(x: 600, y: 600)
    @State var audioPlayer: AVAudioPlayer?
    @State var showText = false
    @State var showTextError = false
    @State var showTextCongrats = false
    @State var isTutoriaComplete = false
    @State var isLevelOneComplete = false
    @State var isTextLevelOne = false
    @State var tutorialIndex = 0
    @State var levelOneIndex = 0
    @State var attempts: Int = 0
    @State var onTouch: Bool = false
    @State var isStart: Bool = false
    @State var isNext: Bool = false
    @State var isPlayerTutorial: Bool = false
    @State var isButtonActiv: Bool = false
    @State var isLevelOneStart: Bool = false
    @State var istutorialStart: Bool = false
    @State var isStartLeveOne: Bool = false

    
    var body: some View {
        ZStack{
            Color.red
                ZStack{
                    
                    Rectangle()
                        .fill(Color.backgroundBlue)
                        .frame(width: UIScreen.main.bounds.width)
                        .modifier(Shake(animatableData: CGFloat(attempts)))
                        .ignoresSafeArea(.all)
                    
                    VStack{
                        ZStack{
                            //animacao de tutorial
                            if isPlayerTutorial == true {
                                 TutorialAnimation()
                            }
                            //texto inicial tutorial
                            if showText == true{
                                AnimatedTextView(text: levelOneWords.textTutorial, timer: 60)
                            }
                            //LETS TRY
                            if isStart == true {
                                AnimatedTextView(text: levelOneWords.letsTryText, timer: 2)
                                    .onAppear{
                                        Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false){_ in
                                            onTouch = true
                                        }
                                    }
                               
                            }
                            // texto do antes do level 1
                            if isTextLevelOne == true {
                                
                                AnimatedTextView(text: levelOneWords.levelOne, timer: 60)
                                    .onAppear{
                                        onTouch = false
                                        isLevelOneStart = true
                                        Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false){_ in
                                            isButtonActiv = true
                                            
                                        }
                                    }
                            }
                            //texto de erro
                            if showTextError == true{
                        //        if isTutoriaComplete == true {
                                    
//                                    AnimatedTextView(text: levelOneWords.textError, timer: 60)
//                                        .onAppear{
//                                            print("entrou aqui ta")
//                                            onTouch = false
//                                            isLevelOneStart = true
//                                            Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false){_ in
//                                                isButtonActiv = true
//
//                                            }
//                                        }
                     //           }else {
                                    
                                    AnimatedTextView(text: levelOneWords.textError, timer: 3)
                                        .onAppear{
                                            if isTutoriaComplete == false {
                                                tutorialSounds()
                                            } else if isLevelOneComplete == false {
                                                levelOneSound()
                                            }
                                            

                                        }
                           //     }
                            }
                            
                            //animacao de tutorial SE PRECISAR CONFORME O TEXTE, REPETE ESSA PORRA
                           
                            AnimatedCircleViewOverlay(animatedCircleView: animatedCircleView)
                                .position(pos)
                        }
                        Spacer()
                        if isButtonActiv == true{
                            Button(action: {
                                isNext.toggle()
                                if isNext == true {
                                    print("vamolaaaa")
                                    istutorialStart = true
                                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false){_ in
                                        withAnimation{
                                            showText = false
                                            isPlayerTutorial = true
                                            
                                        }
                                        if isPlayerTutorial == true {
                                            tutorialSounds()
                                            
                                        }
                                      
                                    }
                                }
                                
                                if isLevelOneStart == true {
                                    levelOneSound()
                                    isStartLeveOne = true
                                   
                                    
                                    
                                }
                                
                                withAnimation{
                                    isButtonActiv = false
                                    isTextLevelOne = false
                                  
                                }
                                
                            }) {
                                AnimatedTextNext(textNext: textsNext.startTutorial)
                                
                            }.padding()

                        }
                    }
                    
                    
                    
                }
                // PRECISAR SAIR DAQUI QUANDO CRIAR A VIEW ANTERIOR
                .onAppear{
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) {_ in
                        withAnimation{
                            showText = true
                        }
                    }
                    Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) {_ in
                        withAnimation{
                            isButtonActiv = true
                        }
                    }
                    
                    
                }
                .edgesIgnoringSafeArea(.all)
                .onTapGesture { tap in
                    if isStartLeveOne == true {
                        print("inicio do level")
                        self.tapLevelOne(tap: tap)
                    } else if istutorialStart == true {
                        print("inicio tutorial")
                        self.tutorialTouch(tap: tap)
                    }
                    print("tocando")
                }
                
                
            
            
        }
    }
    
}









