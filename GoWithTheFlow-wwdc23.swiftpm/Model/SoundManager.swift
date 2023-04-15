////
////  File.swift
////
////
////  Created by kevin marinho on 08/04/23.
////
//
//import Foundation
//import SwiftUI
//import AVFoundation
//import UIKit
//
//class SoundManager {
//   @State var audioPlayer: AVAudioPlayer?
//    static let instance = SoundManager()
//
//    func playSoundRight(sound: SoundOptionRight){
//        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else {return}
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: url)
//           // audioPlayer.pan = 1.0
//            audioPlayer?.play()
//        }catch let error {
//            print("erro ao tocar a musica \(error.localizedDescription)")
//        }
//    }
//
//    func playSoundLeft(sound: SoundOptionLeft){
//        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".wav") else {return}
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: url)
//           // audioPlayer.pan = -1.0
//            audioPlayer?.play()
//        }catch let error {
//            print("erro ao tocar musica \(error.localizedDescription)")
//        }
//    }
//
//}
//
////class SoundTrackManager{
////    var audioPlayer: AVAudioPlayer!
////
////    init(fileName: SoundOptionLeft, loop: Int?){
////        let sound = Bundle.main.path(forResource: fileName.rawValue, ofType: ".mp3")
////        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
////        self.audioPlayer.numberOfLoops = loop!
////    }
////}
//
//
//
