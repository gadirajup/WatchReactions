//
//  TableInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Prudhvi Gadiraju on 5/5/19.
//  Copyright © 2019 Prudhvi Gadiraju. All rights reserved.
//

import WatchKit
import AVFoundation


class TableInterfaceController: WKInterfaceController, SoundPlaying {
    var audioPlayer: AVAudioPlayer?
    

    @IBOutlet weak var table: WKInterfaceTable!
    
    let sounds = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil)?.map {
        $0.deletingPathExtension().lastPathComponent
        } .sorted() ?? []
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        print(sounds)

        table.setNumberOfRows(sounds.count, withRowType: "Row")
        
        for (index, sound) in sounds.enumerated() {
            guard let row = table.rowController(at: index) as? SoundRow else { continue }
            row.textLabel.setText(sound)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        playSound(named: sounds[rowIndex])
    }

}
