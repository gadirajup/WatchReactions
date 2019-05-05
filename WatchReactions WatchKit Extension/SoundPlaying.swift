//
//  SoundPlaying.swift
//  WatchReactions WatchKit Extension
//
//  Created by Prudhvi Gadiraju on 5/5/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import AVFoundation

protocol SoundPlaying: AnyObject {
    var audioPlayer: AVAudioPlayer? { get set }
}

extension SoundPlaying {
    func playSound(named name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else {
            fatalError("Unable to find \(name).mp3")
        }
        
        try? audioPlayer = AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    }
}
