//
//  ViewController.swift
//  MoviePlayer
//
//  Created by minimani on 2021/11/05.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func playVideo(url: NSURL) {
        let playerController = AVPlayerViewController()
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        
        self.present(playerController, animated: true) {
            player.play()
        }
    }

    @IBAction func btnPlayinternalMovie(_ sender: UIButton) {
        let filePath: String? = Bundle.main.path(forResource: "wheein", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
    }
    
    @IBAction func btnPlayExternalMovie(_ sender: UIButton) {
        let url = NSURL(string: "https://youtu.be/_y8jhlx7Xy8")!
        
        playVideo(url: url)
    }
}

