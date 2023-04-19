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
        static let textTutorial = "relaxText"
        static let levelOne = "firstGameText"
        static let levelTwo = "secondGameText"
        static let levelTree = "thirdGameText"
        static let levelFour = "fouthGameText"
        static let finalTextOne = "fiveGameText"
        static let finalTextTwo = "lastText"
        static let textError = "tryAgain"
        static let congrats = "Congrats"
        static let letsTryText = "tryText"
    }
    
    enum textsNext{
        static let startTutorial = "tapToNext"
    }
}
