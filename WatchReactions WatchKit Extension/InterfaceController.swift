//
//  InterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Prudhvi Gadiraju on 5/5/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import WatchKit
import AVFoundation


class InterfaceController: WKInterfaceController, SoundPlaying {
    
    var audioPlayer: AVAudioPlayer?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func playSound1() {
        playSound(named: "Pew_Pew")
    }
    @IBAction func playSound2() {
        playSound(named: "hahaha")
    }
    @IBAction func playSound3() {
        playSound(named: "Quack Quack")
    }
    @IBAction func playSound4() {
        playSound(named: "Fart-Common")
    }
    
}
