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
        static let textTutorial = "Just watch and relax"
        static let levelOne = "oh! something seems to have changed. How about we continue? pay attention to the correct side."
        static let levelTwo = "When we listen to or produce music our brain releases endorphin, which provides natural pain relief."
        static let levelTree = "brain also produces dopamine, which brings feelings of optimism, strength, energy and vivacity. So it plays a fundamental role in our mental processes, and nowadays it has also been used as a form of treatment."
        static let levelFour = "In addition music can help in reducing stress, anxiety and depression as it can reduce blood pressure, heart rate and encourage body movement. Adding color to something that seemed devoid of color."
        static let finalTextOne = "Congratulations, you got all the levels right and gave life to the tree."
        static let finalTextTwo = "Music is a form of expression that goes back to the origins of humanity, it is like a language of feelings and sensations, able to translate artistically, or even without words a feeling. "
        static let textError = "Breathe... and try again"
        static let congrats = "Congrats"
        static let letsTryText = "Let's try ? it's your turn. Go With The Flow!"
    }
    
    enum textsNext{
        static let startTutorial = "START TUTORIAL"
    }
}
