//
//  FinalViewController.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import UIKit
import Foundation

class FinalViewController: UIViewController {

    var resultText = ""
    @IBOutlet var resultLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        resultLable.text = resultText

    }

}




#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "FinalViewController")
}
