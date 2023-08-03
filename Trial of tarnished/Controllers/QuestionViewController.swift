//
//  QuestionViewController.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import UIKit
import Foundation

class QuestionViewController: UIViewController {
    
    
    @IBOutlet var quizCollection: [UILabel]!
    @IBOutlet var quizOptionButtonCollection: [UIButton]!
    @IBOutlet var nextButton: UIButton!
    
    
    var scoreTracker = ScoreTracker()
    var tags  = ""
    
    
    
    private var index:Int = 0{
        willSet{
            if index > 5{
                destroyNextButton()
            }
        }
        
        didSet{
            quizInitializer()
        }
    }
    
    
    //-----------------------------------------VIEWDIDLOAD-------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizInitializer()
    }
    
    
    
    func quizInitializer(){
        
        let quizTitle:String = Quiz.allCases[index].rawValue
        let quizDescription:String = Quiz.allCases[index].description
        let quizOptions:[String] = Quiz.allCases[index].options
        let quizTags:[String] = Quiz.allCases[index].tags
        
        //Set quize title and quiz description
        quizCollection[0].text = quizTitle
        quizCollection[1].text = quizDescription
        
        
        //Set four buttons
        for (optionIndex,option) in quizOptionButtonCollection.enumerated() {
            option.setTitle(quizOptions[optionIndex], for: .normal)
            option.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            option.accessibilityLabel = quizTags[optionIndex]
        }
    }
    
    
    //------------------------------------------FUNCTIONS----------------------------------------------
    func destroyNextButton(){
        nextButton.removeFromSuperview()
    }
    
    func updateOptions(){
        for option in quizOptionButtonCollection{
            option.isSelected = false
            option.backgroundColor = .clear
            
        }
    }
    
    
    @IBAction func optionButtonPressed(_ sender: UIButton) {
        for option in quizOptionButtonCollection{
            
            let selectedOrNot = option.titleLabel?.text == sender.titleLabel?.text
            
            option.isSelected = selectedOrNot ? true:false
            option.backgroundColor = selectedOrNot ? .lightGray:.clear
            print(sender.isSelected)
        }
        
        
        tags = sender.accessibilityLabel ?? "rennalaQueenOfTheFullMoon"
        
        print(tags)
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        scoreTracker.trackingScore(tags)
        updateOptions()
        index += 1
    }
    
    
    //----------------------------------------SEGUE FUNCTIONS--------------------------------------
    
 
    @IBSegueAction func sendResults(_ coder: NSCoder) -> FinalViewController? {
        let controller =  FinalViewController(coder: coder)
        
        scoreTracker.getHighestScore()
        controller?.resultText = scoreTracker.result
        
        
        return controller
    }
    
    
    
    
    
    
    
    
    
    
}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "QuestionViewController")
}
