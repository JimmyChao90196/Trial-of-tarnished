//
//  FinalViewController.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import UIKit
import Foundation

class FinalViewController: UIViewController {

    
    var resultDemigod = DemigodInfo.Nickname.godrickTheGrafted


    @IBOutlet var resultBackgroundImage: UIImageView!
    @IBOutlet var resultDescription: UITextView!
    @IBOutlet var resultRuneImage: UIImageView!
    @IBOutlet var resultTitle: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateResult()
    }
    
    
    //Update result according to the highest score
    func updateResult(){
        let resultDemigodInfo = DemigodInfo(resultDemigod)
        resultTitle.text = resultDemigodInfo.titles
        resultDescription.text = resultDemigodInfo.description
        resultRuneImage.image = UIImage(named: resultDemigodInfo.runePictures)
        resultRuneImage.backgroundColor = .black
        resultBackgroundImage.image = UIImage(named: resultDemigodInfo.bossImage)
    }
    
    
    
}




#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "FinalViewController")
}
