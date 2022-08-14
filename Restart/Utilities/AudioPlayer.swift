//
//  AudioPlayer.swift
//  Restart
//
//  Created by Volodymyr Taratunskyi on 14.08.2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try AVAudioSession.sharedInstance().setCategory(.ambient)
            audioPlayer?.setVolume(0.2, fadeDuration: 1)
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
