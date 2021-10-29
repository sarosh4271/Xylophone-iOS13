//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressedC(_ sender: UIButton) {
//      if  let buttonTitle = sender.title(for: .normal){
//            print(buttonTitle)
//        }
        let buttonTitle: String = sender.currentTitle!
              playSound(soundFile: buttonTitle)
    
        sender.alpha = 0.3
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            sender.alpha = 1.0
            print("End")}
        
    }
    
    func playSound(soundFile:String) {
        let url = Bundle.main.url(forResource: "\(soundFile)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


