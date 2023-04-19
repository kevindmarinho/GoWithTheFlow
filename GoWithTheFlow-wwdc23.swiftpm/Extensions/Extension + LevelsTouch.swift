//
//  File.swift
//  
//
//  Created by kevin marinho on 10/04/23.
//

import Foundation
import SwiftUI
import UIKit

@available(iOS 16.0, *)
extension GameView {
    //MARK: TUTORIAL TOUCH
    func tutorialTouch(tap: CGPoint) -> Void {
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if tutorialIndex < tutorialSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if tutorialSequence[tutorialIndex]  == .SoundsLevelThreeFirst  {
                        impactRigid.impactOccurred()
                        self.playSoundLeft(sound: .SoundsLevelThreeFirst)
                        tutorialIndex += 1
                    }else{
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        impactRigid.impactOccurred()
                        tutorialIndex = 0
                    //    withAnimation(.easeInOut(duration: 3)){
                            showTextError = true
                      //  }
                        onTouch = false
                        isPlayerTutorial = false
                        isTutoriaComplete = false
                    }
                }
                //DIREITA
                else {
                    if tutorialSequence[tutorialIndex] == .firstTutorialSong {
                        impactRigid.impactOccurred()
                        self.playSoundRight(sound: .firstTutorialSong)
                        tutorialIndex += 1
                    } else if tutorialSequence[tutorialIndex] == .secondTutorialSong{
                        impactRigid.impactOccurred()
                        self.playSoundRight(sound: .secondTutorialSong)
                        tutorialIndex += 1
                    } else {
                        impactRigid.impactOccurred()
                        tutorialIndex = 0
               //         withAnimation(.easeInOut(duration: 3)){
                            showTextError = true
                ///        }
                        onTouch = false
                        isPlayerTutorial = false
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        isTutoriaComplete = false
                    }
                }
            }
        }else{
            print("FALSE TUTORIAL")
        }
        if tutorialIndex == tutorialSequence.count {
            print("acertou o tutorial")
            isTextLevelOne = true
            withAnimation(.easeInOut(duration: 3)){
                isTutoriaComplete = true
            }
            onTouch = false
            istutorialStart = false
            showTextError = false
            isStart = false
            isNext = false
            
            
            
            
        }
    }
    //MARK: LEVEL ONE
    func tapLevelOne(tap: CGPoint) -> Void {
        print("entrou na funcao level 1")
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if levelOneIndex < levelOneSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if levelOneSequence[levelOneIndex]  == .SoundsLevelOneSecond  {
                        impactRigid.impactOccurred()
                        self.playSoundLeft(sound: .SoundsLevelOneSecond)
                        levelOneIndex += 1
                    } else if levelOneSequence[levelOneIndex] == .SoundsLevelOneFourth{
                        impactRigid.impactOccurred()
                        self.playSoundLeft(sound: .SoundsLevelOneFourth)
                        levelOneIndex += 1
                    }else{
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        impactRigid.impactOccurred()
                        levelOneIndex = 0
                       // withAnimation{
                            showTextError = true
                       // }
                        onTouch = false
                        isLevelOneComplete = false
                        isStartLevelOneAnimation = false
                    }
                }
                //DIREITA
                else {
                    if levelOneSequence[levelOneIndex] == .SoundsLevelOneFirst {
                        impactRigid.impactOccurred()
                        self.playSoundRight(sound: .SoundsLevelOneFirst)
                        levelOneIndex += 1
                    } else if levelOneSequence[levelOneIndex] == .SoundsLevelOneThird{
                        impactRigid.impactOccurred()
                        self.playSoundRight(sound: .SoundsLevelOneThird)
                        levelOneIndex += 1
                    } else {
                        impactRigid.impactOccurred()
                        levelOneIndex = 0
                       // withAnimation{
                            showTextError = true
                      //  }
                        onTouch = false
                        isLevelOneComplete = false
                        isStartLevelOneAnimation = false
                        withAnimation(.default){
                            self.attempts += 1
                        }
                    }
                }
            }
        }else{
            print("FALSO LEVEL ONE")
        }
        if levelOneIndex == levelOneSequence.count {
            print("acertou o level 1")
            onTouch = false
            isTextLevelTwo = true
            showTextError = false
            isStart = false
            isLevelOneStartSound = false
            withAnimation(.easeInOut(duration: 3)){
                isLevelOneComplete = true
            }


        }
    }
    //MARK: LEVEL TWO
    func tapLevelTwo(tap: CGPoint) -> Void {
        print("entrou na funcao level 2")
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if levelTwoIndex < levelTwoSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if levelTwoSequence[levelTwoIndex]  == .SoundLevelTwoFirst  {
                        impactRigid.impactOccurred()
                        print("acertou o primeiro")
                        self.playSoundLeft(sound: .SoundLevelTwoFirst)
                        levelTwoIndex += 1
                    }else if levelTwoSequence[levelTwoIndex]  == .SoundLevelTwoFourth{
                        impactRigid.impactOccurred()
                        self.playSoundLeft(sound: .SoundLevelTwoFourth)
                        levelTwoIndex += 1
                    }else{
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        impactRigid.impactOccurred()
                        levelTwoIndex = 0
                        showTextError = true
                        onTouch = false
                        isStartLevelTwoAnimation = false
                    }
                }
                //DIREITA
                else {
                    if levelTwoSequence[levelTwoIndex] == .SoundsLevelTwoSecond {
                        impactRigid.impactOccurred()
                        self.playSoundRight(sound: .SoundsLevelTwoSecond)
                        levelTwoIndex += 1
                    } else if levelTwoSequence[levelTwoIndex] == .SoundLevelTwoThird{
                        impactRigid.impactOccurred()
                        self.playSoundRight(sound: .SoundLevelTwoThird)
                        levelTwoIndex += 1
                    } else {
                        impactRigid.impactOccurred()
                        levelTwoIndex = 0
                   //     withAnimation{
                            showTextError = true
                   //     }
                        onTouch = false
                        isStartLevelTwoAnimation = false
                        withAnimation(.default){
                            self.attempts += 1
                        }
                    }
                }
            }
        }else{
            print("AQUI")
        }
        if levelTwoIndex == levelTwoSequence.count {
            print("acertou o level 2")
            onTouch = false
            isTextLevelThree = true
            showTextError = false
            isLevelTwoStartSound = false
            isStart = false
            withAnimation(.easeInOut(duration: 3)){
                isLevelTwoComplete = true
            }
        }
    }
    //MARK: LEVEL THREE
    func tapLevelThree(tap: CGPoint) -> Void {
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if levelThreeIndex < levelThreeSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if levelThreeSequence[levelThreeIndex]  == .SoundsLevelThreeSecond  {
                        impactRigid.impactOccurred()
                        print("ESTOU CORRETO BRO")
                        self.playSoundLeft(sound: .SoundsLevelThreeSecond)
                        levelThreeIndex += 1
                    }else{
                        print("ESTOU ERRADO BRO")
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        impactRigid.impactOccurred()
                        levelThreeIndex = 0
                        showTextError = true
                        onTouch = false
                        isStartLevelThreeAnimation = false
                    }
                }
                //DIREITA
                else {
                    if levelThreeSequence[levelThreeIndex] == .SoundsLevelThreeFirst {
                        impactRigid.impactOccurred()
                        print("acerrrtouuuuu")
                        self.playSoundRight(sound: .SoundsLevelThreeFirst)
                        levelThreeIndex += 1
                    } else if levelThreeSequence[levelThreeIndex] == .SoundsLevelThreeThird{
                        impactRigid.impactOccurred()
                        print("OI")
                        self.playSoundRight(sound: .SoundsLevelThreeThird)
                        levelThreeIndex += 1
                    } else if levelThreeSequence[levelThreeIndex] == .SoundsLevelThreeFourth{
                        impactRigid.impactOccurred()
                        self.playSoundRight(sound: .SoundsLevelThreeFourth)
                        levelThreeIndex += 1
                    }else{
                        impactRigid.impactOccurred()
                        print("errooooou")
                        levelThreeIndex = 0
                  //      withAnimation{
                            showTextError = true
                  //      }
                        onTouch = false
                        isStartLevelThreeAnimation = false
                        withAnimation(.default){
                            self.attempts += 1
                        }
                    }
                }
            }
        }else{
            print("AQUI")
        }
        if levelThreeIndex == levelThreeSequence.count {
            print("acertou o level tres")
            onTouch = false
            isTextLevelFour = true
            showTextError = false
            isLevelThreeStartSound = false
            isStart = false
            withAnimation(.easeInOut(duration: 3)){
                isLevelThreeComplete = true
            }
        }
    }
    //MARK: LEVEL FOUR
    func tapLevelFour(tap: CGPoint) -> Void {
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if levelFourIndex < levelFourSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if levelFourSequence[levelFourIndex]  == .SoundsLevelFourSecond  {
                        impactRigid.impactOccurred()
                        print("ESTOU CORRETO BRO")
                        self.playSoundLeft(sound: .SoundsLevelFourSecond)
                        levelFourIndex += 1
                    }else if levelFourSequence[levelFourIndex]  == .SoundsLevelFourThird {
                        impactRigid.impactOccurred()
                        self.playSoundLeft(sound: .SoundsLevelFourThird)
                        levelFourIndex += 1
                    }else{
                        impactRigid.impactOccurred()
                        print("ESTOU ERRADO BRO")
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        isStartLevelFourAnimation = false
                        levelFourIndex = 0
                 //       withAnimation{
                            showTextError = true
                  //      }
                        onTouch = false
                    }
                }
                //DIREITA
                else {
                    if levelFourSequence[levelFourIndex] == .SoundsLevelFourFirst {
                        impactRigid.impactOccurred()
                        print("acerrrtouuuuu")
                        self.playSoundRight(sound: .SoundsLevelFourFirst )
                        levelFourIndex += 1
                    } else if levelFourSequence[levelFourIndex] == .SoundsLevelFourFourth{
                        impactRigid.impactOccurred()
                        print("OI")
                        self.playSoundRight(sound: .SoundsLevelFourFourth)
                        levelFourIndex += 1
                    } else {
                        impactRigid.impactOccurred()
                        print("errooooou")
                        levelFourIndex = 0
                 //       withAnimation{
                            showTextError = true
                 //       }
                        onTouch = false
                        isStartLevelFourAnimation = false
                        withAnimation(.default){
                            self.attempts += 1
                        }
                    }
                }
            }
        }else{
            print("AQUI")
        }
        if levelFourIndex == levelFourSequence.count {
            print("acertou o level quatro")
            withAnimation(.easeInOut(duration: 3)){
                isLevelFourComplete = true
                isTextFive = true
                isLevelFourStartSound = false
            }
        }
    }
}


