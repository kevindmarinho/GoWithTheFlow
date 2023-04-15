//
//  File.swift
//  
//
//  Created by kevin marinho on 10/04/23.
//

import Foundation
import SwiftUI
@available(iOS 16.0, *)
extension GameView{
    //MARK: TUTORIAL
    func tutorialSounds(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.playSoundRight(sound: .firstTutorialSong)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
            self.playSoundRight(sound: .secondTutorialSong)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.5) {
            self.playSoundLeft(sound: .SoundsLevelThreeFirst)
            
            showTextError = false
           // isStart = true
            
        }
        // timer para ativar touch e text do level
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            isStart = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 9.0) {
            onTouch = true
        }
    }
    //MARK: LEVEL ONE
    func levelOneSound(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.playSoundRight(sound: .SoundsLevelOneFirst)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5){
            self.playSoundLeft(sound: .SoundsLevelOneSecond)
                
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.5){
            self.playSoundRight(sound: .SoundsLevelOneThird)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.5){
            self.playSoundLeft(sound: .SoundsLevelOneFourth)
            isStart = true
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 12.0){
        onTouch = true
        showTextError = false
        }
    }
   //MARK: LEVEL TWO
    func levelTwoSound(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.playSoundLeft(sound: .SoundLevelTwoFirst)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0){
            self.playSoundRight(sound: .SoundsLevelTwoSecond)
                
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.5){
            self.playSoundRight(sound: .SoundLevelTwoThird)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.5){
            self.playSoundLeft(sound: .SoundLevelTwoFourth)
            isStart = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 12.0){
        onTouch = true
        showTextError = false
        }
    }
    
    func levelThreeSound(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.playSoundRight(sound: .SoundsLevelThreeFirst)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0){
            self.playSoundLeft(sound: .SoundsLevelThreeSecond)
                
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.5){
            self.playSoundRight(sound: .SoundsLevelThreeThird)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.5){
            self.playSoundRight(sound: .SoundsLevelThreeFourth)
            isStart = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 12.0){
        onTouch = true
        showTextError = false
        }
    }

}
