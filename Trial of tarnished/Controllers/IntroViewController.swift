//
//  IntroViewController.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import UIKit
import Foundation

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let test = Demigod(demigod: .mohgLordOfBlood)
        test.printInformation()
    }
    


}



#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "IntroViewController")
}
