//
//  ViewControllers.swift
//  9.QuizllerApp
//
//  Created by swapnil jadhav on 23/10/20.
//  Copyright © 2020 t. All rights reserved.
//

import UIKit

//Use an AVPlayer

class ViewControllers: UIViewController {

    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var progressLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var pg1: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nextQuestion()
        
       // let first = allQuestion.list[0]
        //questionLbl.text = first.question

            //pv.progress = 0.0
    }
    
    
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
       // print(sender.tag)
        
        if sender.tag == 1
        {
            pickedAnswer = true
        }
        else if sender.tag == 2
        {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        
        nextQuestion()
        
     
    }
    
    
    func UpdateUI()
    {
        scoreLbl.text = "Score:\(score)"
        progressLbl.text = "\(questionNumber + 1) /13"
        
         //progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
     
        }
    
    func checkAnswer()
    {
        let correctAnswer = allQuestion.list[questionNumber].CorrectAnswer
        
        if correctAnswer == pickedAnswer
        {
            
            
            ProgressHUD.showSuccess("Correct")
            
            score += 1
           
        }
        
        else
        {
            
            ProgressHUD.showError("wrong")
            

            
        }
    }
    
    func nextQuestion()
    {
        
        if questionNumber <= 12
        {
        questionLbl.text = allQuestion.list[questionNumber].question
            
            UpdateUI()
        }
        else
        {
            
            let alertController = UIAlertController(title: "Got It", message: "Finish The line , do u want to start Again?", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Restart", style: .default) { (actions) in
                
                
                self.startOver()
            }
            
            alertController.addAction(action)
            
            self.present(alertController, animated: true, completion: nil)
            
           
        }
        
        
    }
    
    func startOver()
    {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
   
}
