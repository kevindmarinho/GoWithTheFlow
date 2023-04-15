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
    let levelTwoSequence: [SoundOption] = [.SoundLevelTwoFirst, .SoundsLevelTwoSecond, .SoundLevelTwoThird, .SoundLevelTwoFourth]
    let levelThreeSequence: [SoundOption] = []
    let levelFourSequence: [SoundOption] = []
    
    @StateObject var animatedCircleView = AnimatedCircleView()
    @State var pos = CGPoint(x: 600, y: 600)
    @State var audioPlayer: AVAudioPlayer?
    @State var showText = false
    @State var showTextError = false
    @State var showTextCongrats = false
    //complete
    @State var isTutoriaComplete = false
    @State var isLevelOneComplete = false
    @State var isLevelTwoComplete = false
    @State var isLevelThreeComplete = false
    //textos
    @State var isTextLevelOne = false
    @State var isTextLevelTwo = false
    @State var isTextLevelThree = false
    //index touchs
    @State var tutorialIndex = 0
    @State var levelOneIndex = 0
    @State var levelTwoIndex = 0
    @State var levelThreeIndex = 0
    @State var attempts: Int = 0
    //components
    @State var onTouch: Bool = false
    @State var isStart: Bool = false
    @State var isNext: Bool = false
    @State var isPlayerTutorial: Bool = false
    @State var isButtonActiv: Bool = false
    //start levels
    @State var isLevelOneStartSound: Bool = false
    @State var isLevelOneStartTouch: Bool = false
    @State var isLevelTwoStartSound: Bool = false
    @State var isLevelTwoStartTouch: Bool = false
    @State var isLevelThreeStartSound: Bool = false
    @State var isLevelThreeStartTouch: Bool = false
    @State var istutorialStart: Bool = false
    //start animations
    @State var isStartLevelOneAnimation: Bool = false
    @State var isStartLevelTwoAnimation: Bool = false
    @State var isStartLevelThreeAnimation: Bool = false
    
    
    
    var body: some View {
        ZStack{
            Color.backgroundBlue
            ZStack{
                Image("backgroundGWTF")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width)
                    .ignoresSafeArea(.all)
                    .modifier(Shake(animatableData: CGFloat(attempts)))
                
                ZStack{
                    Group{
                        //animacao de tutorial
                        if isPlayerTutorial == true {
                            TutorialAnimation()
                        }
                        //inicio animacao level one
                        if isStartLevelOneAnimation == true {
                            LevelOneAnimation()
                        }
                        //inicio animacao level two
                        if isStartLevelTwoAnimation == true {
                            LevelTwoAnimation()
                        }
                        //inicio animacao level three
                        if isStartLevelThreeAnimation == true {
                            LevelThreeAnimation()
                        }
                    }
                    //texto inicial tutorial
                    if showText == true{
                        AnimatedTextView(text: levelOneWords.textTutorial, timer: 120)
                    }
                    //LETS TRY
                    if isStart == true {
                        AnimatedTextView(text: levelOneWords.letsTryText, timer: 2.5)
                            .onAppear{
                                print("pode comecar")
                                Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false){_ in
                                    onTouch = true
                                    withAnimation{
                                        isStart = false
                                    }
                                }
                            }
                        
                    }
                    // texto level 1
                    if isTextLevelOne == true {
                        AnimatedTextView(text: levelOneWords.levelOne, timer: 120)
                            .onAppear{
                                onTouch = false
                                isLevelOneStartSound = true
                                
                                Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false){_ in
                                    isButtonActiv = true
                                    
                                }
                            }
                    }
                    //texto level 2
                    if isTextLevelTwo == true {
                        AnimatedTextView(text: levelOneWords.levelTwo, timer: 120)
                            .onAppear{
                                onTouch = false
                                isLevelTwoStartSound = true
                                Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false){_ in
                                    isButtonActiv = true
                                }
                                
                            }
                    }
                    //text level 3
                    if isTextLevelThree == true {
                        AnimatedTextView(text: levelOneWords.levelTree, timer: 120)
                            .onAppear{
                                onTouch = false
                                isLevelThreeStartSound = true
                                Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false){_ in
                                    isButtonActiv = true
                                }
                            }
                    }
                    //tratamento de erro
                    if showTextError == true{
                        AnimatedTextView(text: levelOneWords.textError, timer: 3)
                            .onAppear{
                                print("entrou no erro")
                                if isTutoriaComplete == false {
                                    tutorialSounds()
                                    isPlayerTutorial = true
                                    
                                } else if isLevelOneComplete == false {
                                    levelOneSound()
                                    isStartLevelOneAnimation = true
                                    
                                } else if isLevelTwoComplete == false {
                                    levelTwoSound()
                                    isStartLevelTwoAnimation = true
                                } else if isLevelThreeComplete == false{
                                    levelThreeSound()
                                    isStartLevelThreeAnimation = true
                                }
                                
                                
                            }
                    }
                    
                    //animacao de tutorial SE PRECISAR CONFORME O TEXTE, REPETE ESSA PORRA
                    
                    AnimatedCircleViewOverlay(animatedCircleView: animatedCircleView)
                        .position(pos)
                }
                Spacer()
                if isButtonActiv == true{
                    Button(action: {
                        isNext = true
                        if isNext == true && isTutoriaComplete == false{
                            istutorialStart = true
                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false){_ in
                                withAnimation{
                                    showText = false
                                    isPlayerTutorial = true
                                    
                                }
                                if isPlayerTutorial == true {
                                    tutorialSounds()
                                    print("tocou esse")
                                }
                                
                            }
                        }
                        // inicia o level 1
                        if isLevelOneStartSound == true {
                            print("inicio do level one")
                            levelOneSound()
                            isLevelOneStartTouch = true
                            isStartLevelOneAnimation = true
                            
                            
                        }
                        //inicia o level 2
                        if isLevelTwoStartSound == true {
                            print("inicio do level two")
                            levelTwoSound()
                            isLevelTwoStartTouch = true
                            isStartLevelTwoAnimation = true
                            
                        }
                        
                        // inicio o level 3
                        if isLevelThreeStartSound == true {
                            print("inicio do level three")
                            levelThreeSound()
                            isLevelThreeStartTouch = true
                            isStartLevelThreeAnimation = true
                            
                        }
                        
                        withAnimation{
                            isButtonActiv = false
                            isTextLevelOne = false
                            isTextLevelTwo = false
                            isTextLevelThree = false
                        }
                        
                    }) {
                        HStack {
                            Text("")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.clear)
                            withAnimation{
                                AnimatedTextNext(textNext: textsNext.startTutorial)
                                    .alignmentGuide(.bottom) { dimension in
                                        dimension.height / 2
                                    }
                                    .offset(x: -20, y: 120) // ajuste o offset de acordo com a posição desejada
                            }
                            
                        }
                        
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
                if isLevelThreeStartTouch == true{
                    print("inicio do leve 3")
                    self.tapLevelThree(tap: tap)
                }else if isLevelTwoStartTouch == true{
                    print("inicio do level two 2")
                    self.tapLevelTwo(tap: tap)
                }else if isLevelOneStartTouch == true {
                    print("inicio do level 1")
                    self.tapLevelOne(tap: tap)
                } else if istutorialStart == true {
                    print("inicio tutorial")
                    self.tutorialTouch(tap: tap)
                }
                print("tocando")
            }
            .gesture(TapGesture().onEnded{
                
            })
            
            
            
        }
    }
    
}









