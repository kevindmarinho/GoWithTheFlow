//
//  File.swift
//  
//
//  Created by kevin marinho on 10/04/23.
//

import Foundation
import SwiftUI
import Foundation
import AVKit

@available(iOS 16.0, *)
extension GameView {
    
    func playSoundRight(sound: SoundOption){
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else {return}
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.pan = 1.0
            audioPlayer?.volume=0.3
            audioPlayer?.play()
        }catch let error {
            print("erro ao tocar a musica \(error.localizedDescription)")
        }
    }
    
    func playSoundLeft(sound: SoundOption){
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else {return}
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.pan = -1.0
            audioPlayer?.volume=0.3
            audioPlayer?.play()
        }catch let error {
            print("erro ao tocar musica \(error.localizedDescription)")
        }
    }
    
}

