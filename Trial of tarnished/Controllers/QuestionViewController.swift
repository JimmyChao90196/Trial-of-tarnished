//
//  QuestionViewController.swift
//  Trial of tarnished
//
//  Created by JimmyChao on 2023/8/3.
//

import UIKit
import Foundation

class QuestionViewController: UIViewController {
    
    //Declare IBOUTLET variable
    @IBOutlet var quizImageView: UIImageView!
    @IBOutlet var showResultButton: UIButton!
    @IBOutlet var quizCollection: [UILabel]!
    @IBOutlet var quizOptionButtonCollection: [UIButton]!
    @IBOutlet var nextButton: UIButton!
    
    //Create an instance of scoreTracker
    var scoreTracker = ScoreTracker()
    var tags  = ""
    
    
    //Set index to keep tracking of the question
    private var index:Int = 0{
        willSet{
            if index > 5{
                destroyNextButton()
                showResultButton.isHidden = false
            }else{
                showResultButton.isHidden = true
            }
        }
        didSet{
            quizInitializer()
        }
    }
    
    
    //----VIEWDIDLOAD----
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showResultButton.isHidden = true
        quizInitializer()
    }
    
    
    //Initialize the quiz including the title and description
    func quizInitializer(){
        
        let quizTitle:String = Quiz.allCases[index].rawValue
        let quizDescription:String = Quiz.allCases[index].description
        let quizOptions:[String] = Quiz.allCases[index].options
        let quizTags:[String] = Quiz.allCases[index].tags
        
        
        //Set imageView
        quizImageView.image = UIImage(named: "bg_0\(index+1)")
        
        
        
        //Set quize title and quiz description
        quizCollection[0].text = quizTitle
        quizCollection[1].text = quizDescription
        
        
        //Set four buttons
        for (optionIndex,option) in quizOptionButtonCollection.enumerated() {
            option.setTitle(quizOptions[optionIndex], for: .normal)
            option.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            option.accessibilityLabel = quizTags[optionIndex]
            
            option.layer.cornerRadius = 20
            option.layer.shadowRadius = 10
            option.layer.borderWidth = 2
            option.layer.borderColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.15, alpha: 0.3).cgColor
        }
    }
    
    
    //---FUNCTIONS---
    
    
    //To destroy button after the result
    func destroyNextButton(){
        nextButton.removeFromSuperview()
    }
    
    //Update option apearance after the next button pressed
    func updateOptions(){
        for option in quizOptionButtonCollection{
            option.isSelected = false
            option.backgroundColor = .clear
            
        }
    }
    
    
    //Update option appearance after option button pressed
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
    
    
    
    //When next button press the following functions we be excecute
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        scoreTracker.trackingScore(tags)
        updateOptions()
        index += 1
        
        
    }
    
    
    
    
    //---SEGUE FUNCTIONS----
    @IBSegueAction func sendResult(_ coder: NSCoder) -> FinalViewController? {
        let controller =  FinalViewController(coder: coder)
        
        scoreTracker.trackingScore(tags)
        scoreTracker.getHighestScore()

        controller?.resultDemigod = scoreTracker.resultDemigod
        
        return controller
    }

    
    
}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "QuestionViewController")
}
