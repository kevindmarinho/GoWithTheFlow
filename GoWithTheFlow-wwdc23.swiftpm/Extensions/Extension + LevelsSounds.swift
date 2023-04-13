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
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
            isStart = true
            onTouch = true
        }
    }
    //MARK: LEVELONE
    func levelOneSound(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.playSoundRight(sound: .SoundsLevelOneFirst)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.5){
            self.playSoundLeft(sound: .SoundsLevelOneSecond)
                
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 7.5){
            self.playSoundRight(sound: .SoundsLevelOneThird)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 9.5){
            self.playSoundLeft(sound: .SoundsLevelOneFourth)
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 12.0){
        onTouch = true
        showTextError = false
        isStart = true
        }
    }

}
