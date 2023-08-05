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
    
    // Create an instance of ScoreTracker to keep track of the user's scores.
    var scoreTracker = ScoreTracker()
    // An empty string 'tags' to keep track of the user's chosen options.
    var tags  = ""

    
    
    
    
    // 'index' variable used to track the current question number in the quiz.
    private var index:Int = 0{
      
        willSet{
            // If index is greater than 5, the next button is removed and the results button is revealed.
            if index > 5{
                destroyNextButton()
                showResultButton.isHidden = false
            }else{
                // If the quiz is still ongoing, keep the results button hidden.
                showResultButton.isHidden = true
            }
        }
        // Using 'didSet' Swift property observer to call 'quizInitializer()' function each time the 'index' value changes.
        didSet{
            quizInitializer()
        }
    }

    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initially hiding the 'showResultButton'.
        showResultButton.isHidden = true
        // Initializing the quiz at the start.
        quizInitializer()
    }
    
    
    
    

    //Sets up the quiz question, options and image according to the current 'index' value.
    func quizInitializer(){
        
        // Setting image for the quiz question.
        quizImageView.image = UIImage(named: "bg_0\(index+1)")
        
        
        // Setting quiz title and description.
        quizCollection[0].text = Quiz.allCases[index].rawValue
        quizCollection[1].text = Quiz.allCases[index].description

        
        
        // Fetching option information for the current 'index' value.
        let optionInfos:[OptionInfo] = Quiz.allCases[index].optionInfo
        
        
        // Setting options for the quiz question.
        for (optionIndex,option) in quizOptionButtonCollection.enumerated() {
            
            // Each option button gets a quiz option text, font size and accessibility label (tag).
            option.setTitle(optionInfos[optionIndex].optionContent, for: .normal)
            option.accessibilityLabel = optionInfos[optionIndex].optionTag
            option.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            
            
            // Styling the option buttons.
            option.layer.cornerRadius = 20
            option.layer.shadowRadius = 10
            option.layer.borderWidth = 2
            option.layer.borderColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.15, alpha: 0.3).cgColor
        }
    }
    
    
    
    

    //Removes the 'Next' button from the view.
    func destroyNextButton(){
        nextButton.removeFromSuperview()
    }

    
    
    
    
    //Resets the appearance of option buttons after the 'Next' button is pressed.
    func updateOptions(){
        for option in quizOptionButtonCollection{
            option.isSelected = false
            option.backgroundColor = .clear
        }
    }
    
    
    
    
    
    //Update option appearance after option button pressed
    @IBAction func optionButtonPressed(_ sender: UIButton) {
        for option in quizOptionButtonCollection{
                
            // Determine whether the current option button is the one that was pressed.
            let selectedOrNot = option.titleLabel?.text == sender.titleLabel?.text
            
            // If the option button was the one pressed, set its 'isSelected' property to true and change its background color.
            option.isSelected = selectedOrNot ? true:false
            option.backgroundColor = selectedOrNot ? .lightGray:.clear
            print(sender.isSelected)
        }

        // Assign the accessibility label of the sender button to 'tags'. The accessibility label serves as a tag for each option.
        tags = sender.accessibilityLabel ?? "rennalaQueenOfTheFullMoon"
        print(tags)
    }
    
    
    
    
    
    //When next button press the following functions we be excecute
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        //Track the score of options
        scoreTracker.trackingScore(tags)
        //Reset option appearance
        updateOptions()
        //Update index inorder to continue
        index += 1
        
        
    }
    
    
    
    
    //---SEGUE FUNCTIONS----
    @IBSegueAction func sendResult(_ coder: NSCoder) -> FinalViewController? {
        let controller =  FinalViewController(coder: coder)
        //Track the score of selected option
        scoreTracker.trackingScore(tags)
        //Identify the highest score
        scoreTracker.getHighestScore()

        // Assign the result to 'resultDemigod' of 'FinalViewController'.
        controller?.resultDemigod = scoreTracker.resultDemigod
        
        return controller
    }

    
    
    
    
}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "QuestionViewController")
}
