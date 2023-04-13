//
//  File.swift
//  
//
//  Created by kevin marinho on 12/04/23.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)

extension GameView {
    enum SoundOption: String {
        //tutorial
        case firstTutorialSong
        case secondTutorialSong
        case thirdTutorialSong
        
        //level one
        case SoundsLevelOneFirst
        case SoundsLevelOneSecond
        case SoundsLevelOneThird
        case SoundsLevelOneFourth
        
        //level two
        case SoundLevelTwoFirst
        case SoundsLevelTwoSecond
        case SoundLevelTwoThird
        case SoundLevelTwoFourth
        
        //level tree
        case SoundsLevelThreeFirst
        case SoundsLevelThreeSecond
        case SoundsLevelThreeThird
        case SoundsLevelThreeFourth
        
        //level four
        case SoundsLevelFourFirst
        case SoundsLevelFourSecond
        case SoundsLevelFourThird
        case SoundsLevelFourFourth
    
    }
    
    enum levelOneWords{
        static let textTutorial = "Shall we practice ? Relax and play the side you hear."
        static let levelOne = "Ok, now let's try it with sound only, pay attention."
        static let textError = "Breathe... and try again"
        static let congrats = "Congrats"
        static let letsTryText = "Your turn!"
    }
    
    enum textsNext{
        static let startTutorial = "START TUTORIAL"
    }
}
