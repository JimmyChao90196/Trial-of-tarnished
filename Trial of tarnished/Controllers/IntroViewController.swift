//
//  IntroViewController.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import UIKit
import Foundation
import AVKit
import AVFoundation

class IntroViewController: UIViewController {

    

   

    @IBOutlet var gradientView: UIView!
    let musicPlayer = AVPlayer()
    let gradientLayer = CAGradientLayer()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        initializeBackgroundMusic()
        grad()
        
    }
    
    
    
    
    
    //Set gradient
    func grad(){
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.clear.cgColor,
            UIColor.black.cgColor,
            UIColor.black.cgColor
        ]
        gradientLayer.locations = [0, 0.78, 0.8, 0.95, 1]
        gradientView.layer.addSublayer(gradientLayer)
    }
    
    
    
    
    

    //Initialize music and loop when music end
    func initializeBackgroundMusic(){
        if musicPlayer.timeControlStatus == .playing{
           
        }else{
            if musicPlayer.currentItem == nil{
                let url = Bundle.main.url(forResource: "bgm", withExtension: "mp3")
                let playItem = AVPlayerItem(url: url!)
                musicPlayer.replaceCurrentItem(with: playItem)
            }
            musicPlayer.play()
        }
        
        
        //Notify when music end
        NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: .main) { _ in
            self.musicPlayer.seek(to: .zero)
        }
    }
    
    

    
    

}



#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "IntroViewController")
}
