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
            
        }
    }
    //MARK: LEVEL ONE
    func tapLevelOne(tap: CGPoint) -> Void {
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
                        withAnimation(.default){
                            self.attempts += 1
                        }
                    }
                }
            }
        }else{
            print("FALSO LEVEL ONE")
        }
        if tutorialIndex == levelOneSequence.count {
            print("acertou o level 1")
            showTextCongrats = true
            onTouch = false
        }
    }
    //MARK: LEVEL TWO
    func tapLevelTwo(tap: CGPoint) -> Void {
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if tutorialIndex < tutorialSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if tutorialSequence[tutorialIndex]  == .SoundsLevelTwoSecond  {
                        print("ESTOU CORRETO BRO")
                        self.playSoundLeft(sound: .SoundsLevelTwoSecond)
                        tutorialIndex += 1
                    }else if tutorialSequence[tutorialIndex]  == .SoundLevelTwoThird{
                        self.playSoundLeft(sound: .SoundLevelTwoThird)
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
                    if tutorialSequence[tutorialIndex] == .SoundLevelTwoFirst {
                        print("acerrrtouuuuu")
                        self.playSoundRight(sound: .SoundLevelTwoFirst)
                        tutorialIndex += 1
                    } else if tutorialSequence[tutorialIndex] == .SoundLevelTwoFourth{
                        print("OI")
                        self.playSoundRight(sound: .SoundLevelTwoFourth)
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
    //MARK: LEVEL THREE
    func tapLevelThree(tap: CGPoint) -> Void {
        if onTouch == true {
            pos = tap
            animatedCircleView.animateCircles()
            if tutorialIndex < tutorialSequence.count {
                //ESQUERDA
                if tap.x < UIScreen.main.bounds.width / 2 {
                    if tutorialSequence[tutorialIndex]  == .SoundsLevelThreeSecond  {
                        print("ESTOU CORRETO BRO")
                        self.playSoundLeft(sound: .SoundsLevelThreeSecond)
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
                    if tutorialSequence[tutorialIndex] == .SoundsLevelThreeFirst {
                        print("acerrrtouuuuu")
                        self.playSoundRight(sound: .SoundsLevelThreeFirst)
                        tutorialIndex += 1
                    } else if tutorialSequence[tutorialIndex] == .SoundsLevelThreeThird{
                        print("OI")
                        self.playSoundRight(sound: .SoundsLevelThreeThird)
                        tutorialIndex += 1
                    } else if tutorialSequence[tutorialIndex] == .SoundsLevelThreeFourth{
                        self.playSoundRight(sound: .SoundsLevelThreeFourth)
                        tutorialIndex += 1
                    }else{
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


