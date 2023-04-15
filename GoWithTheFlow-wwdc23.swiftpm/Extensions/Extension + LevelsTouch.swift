//
//  File.swift
//  
//
//  Created by kevin marinho on 10/04/23.
//

import Foundation
import SwiftUI
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
                        self.playSoundLeft(sound: .SoundsLevelThreeFirst)
                        tutorialIndex += 1
                    }else{
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        tutorialIndex = 0
                        showTextError = true
                        onTouch = false
                        isPlayerTutorial = false
                    }
                }
                //DIREITA
                else {
                    if tutorialSequence[tutorialIndex] == .firstTutorialSong {

                        self.playSoundRight(sound: .firstTutorialSong)
                        tutorialIndex += 1
                    } else if tutorialSequence[tutorialIndex] == .secondTutorialSong{

                        self.playSoundRight(sound: .secondTutorialSong)
                        tutorialIndex += 1
                    } else {

                        tutorialIndex = 0
                        showTextError = true
                        onTouch = false
                        isPlayerTutorial = false
                        withAnimation(.default){
                            self.attempts += 1
                        }
                    }
                }
            }
        }else{
            print("FALSE TUTORIAL")
        }
        if tutorialIndex == tutorialSequence.count {
            print("acertou o tutorial")
            isTextLevelOne = true
            isTutoriaComplete = true
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
                        self.playSoundLeft(sound: .SoundsLevelOneSecond)
                        levelOneIndex += 1
                    } else if levelOneSequence[levelOneIndex] == .SoundsLevelOneFourth{
                        self.playSoundLeft(sound: .SoundsLevelOneFourth)
                        levelOneIndex += 1
                    }else{
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        levelOneIndex = 0
                        showTextError = true
                        onTouch = false
                        isLevelOneComplete = false
                        isStartLevelOneAnimation = false
                    }
                }
                //DIREITA
                else {
                    if levelOneSequence[levelOneIndex] == .SoundsLevelOneFirst {

                        self.playSoundRight(sound: .SoundsLevelOneFirst)
                        levelOneIndex += 1
                    } else if levelOneSequence[levelOneIndex] == .SoundsLevelOneThird{

                        self.playSoundRight(sound: .SoundsLevelOneThird)
                        levelOneIndex += 1
                    } else {
                        levelOneIndex = 0
                        showTextError = true
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
            isLevelOneComplete = true
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
                        print("acertou o primeiro")
                        self.playSoundLeft(sound: .SoundLevelTwoFirst)
                        levelTwoIndex += 1
                    }else if levelTwoSequence[levelTwoIndex]  == .SoundLevelTwoFourth{
                        self.playSoundLeft(sound: .SoundLevelTwoFourth)
                        levelTwoIndex += 1
                    }else{
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        levelTwoIndex = 0
                        showTextError = true
                        onTouch = false
                        isStartLevelTwoAnimation = false
                    }
                }
                //DIREITA
                else {
                    if levelTwoSequence[levelTwoIndex] == .SoundsLevelTwoSecond {
                        self.playSoundRight(sound: .SoundsLevelTwoSecond)
                        levelTwoIndex += 1
                    } else if levelTwoSequence[levelTwoIndex] == .SoundLevelTwoThird{
                        self.playSoundRight(sound: .SoundLevelTwoThird)
                        levelTwoIndex += 1
                    } else {
                        levelTwoIndex = 0
                        showTextError = true
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
            isLevelTwoComplete = true
            
            
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
                        print("ESTOU CORRETO BRO")
                        self.playSoundLeft(sound: .SoundsLevelThreeSecond)
                        levelThreeIndex += 1
                    }else{
                        print("ESTOU ERRADO BRO")
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        levelThreeIndex = 0
                        showTextError = true
                        onTouch = false
                        isStartLevelThreeAnimation = false
                    }
                }
                //DIREITA
                else {
                    if levelThreeSequence[levelThreeIndex] == .SoundsLevelThreeFirst {
                        print("acerrrtouuuuu")
                        self.playSoundRight(sound: .SoundsLevelThreeFirst)
                        levelThreeIndex += 1
                    } else if levelThreeSequence[levelThreeIndex] == .SoundsLevelThreeThird{
                        print("OI")
                        self.playSoundRight(sound: .SoundsLevelThreeThird)
                        levelThreeIndex += 1
                    } else if levelThreeSequence[levelThreeIndex] == .SoundsLevelThreeFourth{
                        self.playSoundRight(sound: .SoundsLevelThreeFourth)
                        levelThreeIndex += 1
                    }else{
                        print("errooooou")
                        levelThreeIndex = 0
                        showTextError = true
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
            isLevelThreeComplete = true
        }
    }
    //MARK: LEVEL FOUR
    func tapLevelFour(tap: CGPoint) -> Void {
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if tutorialIndex < tutorialSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if tutorialSequence[tutorialIndex]  == .SoundsLevelFourSecond  {
                        print("ESTOU CORRETO BRO")
                        self.playSoundLeft(sound: .thirdTutorialSong)
                        tutorialIndex += 1
                    }else if tutorialSequence[tutorialIndex]  == .SoundsLevelFourSecond {
                        self.playSoundLeft(sound: .SoundsLevelFourSecond)
                        tutorialIndex += 1
                    }else{
                        print("ESTOU ERRADO BRO")
                        withAnimation(.default){
                            self.attempts += 1
                        }
                        tutorialIndex = 0
                        showTextError = true
                        onTouch = false
                    }
                }
                //DIREITA
                else {
                    if tutorialSequence[tutorialIndex] == .SoundsLevelFourFirst {
                        print("acerrrtouuuuu")
                        self.playSoundRight(sound: .SoundsLevelFourFirst )
                        tutorialIndex += 1
                    } else if tutorialSequence[tutorialIndex] == .SoundsLevelFourFourth{
                        print("OI")
                        self.playSoundRight(sound: .SoundsLevelFourFourth)
                        tutorialIndex += 1
                    } else {
                        print("errooooou")
                        tutorialIndex = 0
                        showTextError = true
                        onTouch = false
                        withAnimation(.default){
                            self.attempts += 1
                        }
                    }
                }
            }
        }else{
            print("AQUI")
        }
        if tutorialIndex == tutorialSequence.count {
            print("acertou o tutorial")
            isTutoriaComplete = true
        }
    }
}


